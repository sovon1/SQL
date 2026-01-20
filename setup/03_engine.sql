USE SQLUniverse;
GO

-- =============================================
-- SYSTEM: Interactive Answer Check
-- =============================================

-- Table to store correct SQL results or solution metadata if needed
-- For now, we rely on comparing View results.

CREATE SCHEMA Solutions;
GO

-- Stored Procedure to check answers
-- Usage: EXEC Check_Answer '01-01'
-- It assumes the user has created a View named [Answer_01-01]
-- It compares it against [Solutions].[Solution_01-01]

IF OBJECT_ID('dbo.Check_Answer', 'P') IS NOT NULL DROP PROCEDURE dbo.Check_Answer;
GO

CREATE PROCEDURE dbo.Check_Answer
    @ExerciseID NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @UserView NVARCHAR(100) = 'Answer_' + REPLACE(@ExerciseID, '-', '_');
    DECLARE @SolutionView NVARCHAR(100) = 'Solutions.Solution_' + REPLACE(@ExerciseID, '-', '_');
    DECLARE @UserCount INT;
    DECLARE @SolCount INT;
    DECLARE @DiffCount INT;

    -- 1. Check if user view exists
    IF OBJECT_ID(@UserView, 'V') IS NULL
    BEGIN
        PRINT '❌ Error: Could not find your answer view.';
        PRINT '   Please create a view named [' + @UserView + '] containing your query.';
        RETURN;
    END

    -- 2. Check if solution exists (Internal error if not)
    IF OBJECT_ID(@SolutionView, 'V') IS NULL
    BEGIN
        PRINT '⚠️ System Error: Solution key for ' + @ExerciseID + ' is missing. Please contact the repo maintainer.';
        RETURN;
    END

    -- 3. Compare Row Counts
    DECLARE @SQL_Count NVARCHAR(MAX);
    DECLARE @ParamDef NVARCHAR(100) = N'@Cnt INT OUTPUT';

    -- Get User Count
    SET @SQL_Count = N'SELECT @Cnt = COUNT(*) FROM ' + @UserView;
    EXEC sp_executesql @SQL_Count, @ParamDef, @Cnt = @UserCount OUTPUT;

    -- Get Solution Count
    SET @SQL_Count = N'SELECT @Cnt = COUNT(*) FROM ' + @SolutionView;
    EXEC sp_executesql @SQL_Count, @ParamDef, @Cnt = @SolCount OUTPUT;

    IF @UserCount != @SolCount
    BEGIN
        PRINT '❌ Incorrect.';
        PRINT '   Your result has ' + CAST(@UserCount AS NVARCHAR) + ' rows.';
        PRINT '   The expected result has ' + CAST(@SolCount AS NVARCHAR) + ' rows.';
        RETURN;
    END

    -- 4. Compare Content (EXCEPT)
    -- If (User EXCEPT Solution) IS EMPTY AND (Solution EXCEPT User) IS EMPTY -> Match

    DECLARE @SQL_Diff NVARCHAR(MAX);
    DECLARE @Diff1 INT, @Diff2 INT;

    -- Check items in User but not in Solution
    SET @SQL_Diff = N'SELECT @Cnt = COUNT(*) FROM (SELECT * FROM ' + @UserView + ' EXCEPT SELECT * FROM ' + @SolutionView + ') as T';
    EXEC sp_executesql @SQL_Diff, @ParamDef, @Cnt = @Diff1 OUTPUT;

    -- Check items in Solution but not in User
    SET @SQL_Diff = N'SELECT @Cnt = COUNT(*) FROM (SELECT * FROM ' + @SolutionView + ' EXCEPT SELECT * FROM ' + @UserView + ') as T';
    EXEC sp_executesql @SQL_Diff, @ParamDef, @Cnt = @Diff2 OUTPUT;

    IF @Diff1 = 0 AND @Diff2 = 0
    BEGIN
        PRINT '✅ CORRECT! Congratulations, Cadet.';
        PRINT '   You have solved exercise ' + @ExerciseID + '.';
    END
    ELSE
    BEGIN
        PRINT '❌ Incorrect Data.';
        PRINT '   The row counts match, but the data does not.';
        PRINT '   You have ' + CAST(@Diff1 AS NVARCHAR) + ' rows that should not be there.';
        PRINT '   You are missing ' + CAST(@Diff2 AS NVARCHAR) + ' rows.';
    END
END
GO
