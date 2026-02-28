This script creates a new database 'DataWarehouse' before that we will check if the database exist and if yes we will delete the database.
Then will create three schemas within the database: 'bronze', 'silver', 'gold'.

  
/*
======================================================
Create Database and Schemas
======================================================
WARNING
  Running this script wil drop the entire 'DataWarehouse' database if it exists.
  All data in the database will be deleted. Proceed with caution and ensure you have
  backups before running the script.
*/
  
Use master;
GO

-- Drop and execute the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehous')
BEGIN 
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO

--- Create the 'DataWarehouse' database
CREATE Database DataWarehouse;
GO

USE DataWarehouse;
GO

--- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

Create SCHEMA gold;
GO
