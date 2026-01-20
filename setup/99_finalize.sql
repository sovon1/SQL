USE SQLUniverse;
GO

-- Load all solutions
-- The setup folder should be executed in order.
-- This script acts as a master loader if run manually,
-- but docker-compose mounts the folder so they run alphabetically.

PRINT 'Setup Complete.';
