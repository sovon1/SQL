USE SQLUniverse;
GO

-- Seed Planets
INSERT INTO Planets (Name, Sector, Population, Climate, IsInhabited) VALUES
('Earth', 'Sol', 8000000000, 'Temperate', 1),
('Mars', 'Sol', 2000000, 'Arid', 1),
('Venus', 'Sol', 0, 'Toxic', 0),
('Proxima Centauri b', 'Alpha', 50000, 'Windy', 1),
('Kepler-452b', 'Cygnus', 12000000, 'Tropical', 1),
('Tatooine', 'Outer', 200000, 'Desert', 1), -- Easter egg
('Arrakis', 'Canopus', 5000000, 'Desert', 1),
('Pandora', 'Alpha', 0, 'Jungle', 0), -- Dangerous
('Gallifrey', 'Kasterborous', 9000000000, 'Temperate', 1);

-- Seed Spacecrafts
INSERT INTO Spacecrafts (Name, Class, CrewCapacity, MaxSpeed, CommissionDate) VALUES
('USS Enterprise', 'Explorer', 1000, 9, '2245-01-01'),
('Millennium Falcon', 'Freighter', 6, 12, '1977-05-25'),
('Serenity', 'Transport', 10, 5, '2517-09-20'),
('Nostromo', 'Towing', 7, 4, '2122-06-03'),
('Discovery One', 'Science', 5, 6, '2001-01-01'),
('Red Dwarf', 'Mining', 150, 2, '2100-03-15'),
('Normandy SR-2', 'Frigate', 30, 10, '2185-01-01'),
('Heart of Gold', 'Prototype', 4, 999, '1979-10-12');

-- Seed Crew (Assigned to Home Planets primarily)
INSERT INTO Crew (FirstName, LastName, Rank, JoinedDate, BasePlanetID) VALUES
('James', 'Kirk', 'Captain', '2230-01-01', 1),
('Spock', 'Unknown', 'Commander', '2230-01-01', 1),
('Leonard', 'McCoy', 'Doctor', '2232-05-10', 1),
('Han', 'Solo', 'Captain', '1970-03-01', 1),
('Chewbacca', 'Unknown', 'Engineer', '1965-01-01', 1),
('Ellen', 'Ripley', 'Warrant Officer', '2110-01-07', 1),
('Malcolm', 'Reynolds', 'Captain', '2510-04-01', 1),
('Dave', 'Bowman', 'Astronaut', '1995-12-01', 1),
('Ford', 'Prefect', 'Researcher', '1975-01-01', 4);

-- Seed Missions
INSERT INTO Missions (MissionName, CraftID, LaunchPlanetID, DestinationPlanetID, LaunchDate, ReturnDate, Status) VALUES
('Exploration Alpha', 1, 1, 4, '2250-01-01', '2255-01-01', 'Completed'),
('Kessel Run', 2, 6, 7, '1980-05-04', '1980-05-04', 'Completed'), -- Very fast
('Mining Run 42', 6, 1, 3, '2150-02-01', NULL, 'In Progress'),
('Diplomatic Envoy', 7, 5, 9, '2186-06-01', '2186-07-01', 'Completed'),
('Artifact Retrieval', 3, 2, 7, '2518-01-01', '2518-03-01', 'Failed'),
('Test Flight', 8, 9, 1, '1980-01-01', '1980-01-01', 'Completed'),
('Colonization Beta', 1, 1, 5, '2260-03-01', NULL, 'Scheduled');

-- Seed Cargo
INSERT INTO Cargo (MissionID, ItemName, WeightKG, ValueCredits, HazardLevel) VALUES
(1, 'Scientific Equipment', 5000.00, 100000.00, 1),
(1, 'Dehydrated Food', 2000.00, 500.00, 0),
(2, 'Spice Melange', 1000.00, 9999999.99, 5), -- Illegal?
(2, 'Coaxium', 50.00, 500000.00, 9), -- Explosive
(3, 'Iron Ore', 50000.00, 20000.00, 2),
(4, 'Diplomatic Gifts', 100.00, 0.00, 0),
(5, 'Alien Artifact', 10.00, 5000000.00, 10);

-- Seed ShipmentLogs (Generate some volume)
DECLARE @i INT = 0;
WHILE @i < 100
BEGIN
    INSERT INTO ShipmentLogs (MissionID, LogDate, Message, AnomalyDetected)
    VALUES (
        (@i % 7) + 1,
        DATEADD(day, -@i, GETDATE()),
        'Routine check. Systems nominal.',
        CASE WHEN @i % 20 = 0 THEN 1 ELSE 0 END
    );
    SET @i = @i + 1;
END;
GO
