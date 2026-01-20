USE master;
GO

IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'SQLUniverse')
BEGIN
    CREATE DATABASE SQLUniverse;
END
GO

USE SQLUniverse;
GO

-- =============================================
-- SCHEMA: InterGalactic Logistics
-- =============================================

-- 1. PLANETS: Locations in the universe
IF OBJECT_ID('Planets', 'U') IS NOT NULL DROP TABLE Planets;
CREATE TABLE Planets (
    PlanetID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Sector NVARCHAR(10),
    Population BIGINT,
    Climate NVARCHAR(50),
    IsInhabited BIT DEFAULT 1
);

-- 2. SPACECRAFTS: The fleet
IF OBJECT_ID('Spacecrafts', 'U') IS NOT NULL DROP TABLE Spacecrafts;
CREATE TABLE Spacecrafts (
    CraftID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Class NVARCHAR(50), -- 'Frigate', 'Freighter', 'Scout'
    CrewCapacity INT,
    MaxSpeed INT, -- In Warp Factor
    CommissionDate DATE
);

-- 3. CREW: People working on ships
IF OBJECT_ID('Crew', 'U') IS NOT NULL DROP TABLE Crew;
CREATE TABLE Crew (
    CrewID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Rank NVARCHAR(50), -- 'Captain', 'Engineer', 'Cadet'
    JoinedDate DATE,
    BasePlanetID INT FOREIGN KEY REFERENCES Planets(PlanetID)
);

-- 4. MISSIONS: Assigned tasks
IF OBJECT_ID('Missions', 'U') IS NOT NULL DROP TABLE Missions;
CREATE TABLE Missions (
    MissionID INT IDENTITY(1,1) PRIMARY KEY,
    MissionName NVARCHAR(200),
    CraftID INT FOREIGN KEY REFERENCES Spacecrafts(CraftID),
    LaunchPlanetID INT FOREIGN KEY REFERENCES Planets(PlanetID),
    DestinationPlanetID INT FOREIGN KEY REFERENCES Planets(PlanetID),
    LaunchDate DATETIME,
    ReturnDate DATETIME, -- NULL if ongoing
    Status NVARCHAR(20) -- 'Scheduled', 'In Progress', 'Completed', 'Failed'
);

-- 5. CARGO: Goods being transported
IF OBJECT_ID('Cargo', 'U') IS NOT NULL DROP TABLE Cargo;
CREATE TABLE Cargo (
    CargoID INT IDENTITY(1,1) PRIMARY KEY,
    MissionID INT FOREIGN KEY REFERENCES Missions(MissionID),
    ItemName NVARCHAR(100),
    WeightKG DECIMAL(10,2),
    ValueCredits DECIMAL(15,2),
    HazardLevel INT -- 1-10
);

-- 6. SHIPMENT_LOGS: Big data for analysis
IF OBJECT_ID('ShipmentLogs', 'U') IS NOT NULL DROP TABLE ShipmentLogs;
CREATE TABLE ShipmentLogs (
    LogID INT IDENTITY(1,1) PRIMARY KEY,
    MissionID INT,
    LogDate DATETIME DEFAULT GETDATE(),
    Message NVARCHAR(MAX),
    AnomalyDetected BIT DEFAULT 0
);
GO
