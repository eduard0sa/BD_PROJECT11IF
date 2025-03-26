USE [MORPHEUS_ENGINE]
GO

CREATE FUNCTION CALC_AGE ( @initialDate date )
RETURNS INT
BEGIN
	RETURN DATEDIFF(@initialDate, YEAR(GETDATE()))
END

CREATE FUNCTION ENCRYPT_PASSWORD ( @string varchar(100), @encryption_alg varchar(10) )
RETURNS VARBINARY
BEGIN
	RETURN HASHBYTES(@encryption_alg, @string)
END

CREATE FUNCTION CALC_WASTED_ENERGY ( @energy_production float, @energy_consumption float, @energy_storage float)
RETURNS float
BEGIN
	DECLARE @wasted_energy float
	SET @wasted_energy = @energy_production - @energy_consumption - @energy_storage
	RETURN @wasted_energy
END

CREATE FUNCTION CALC_PERCENTAGE ( @total float, @part float)
RETURNS float
BEGIN
	RETURN @part / @total * 100
END

CREATE FUNCTION ENERGY_PRODUCTION_LAST_MONTH ( @POWER_PLANT_ID int )
RETURNS float
BEGIN
	DECLARE @total_energy_production float
	SET @total_energy_production = (SELECT SUM(LOG_POWER_OUTPUT) FROM POWER_FLUX_LOGS WHERE LOG_SOURCE_ID = @POWER_PLANT_ID)
	RETURN @energy_production
END

CREATE FUNCTION ENERGY_CONSUMPTION_LAST_MONTH ( @POWER_PLANT_ID int )
RETURNS float
BEGIN
	DECLARE @total_energy_consumption float
	SET @total_energy_consumption = (SELECT SUM(LOG_POWER_CONSUMPTION) FROM POWER_FLUX_LOGS WHERE LOG_SOURCE_ID = @POWER_PLANT_ID)
	RETURN @energy_consumption
END

CREATE FUNCTION ENERGY_STORAGE_LAST_MONTH ( @POWER_PLANT_ID int )
RETURNS float
BEGIN
	DECLARE @total_energy_storage float
	SET @total_energy_storage = (SELECT SUM(LOG_POWER_STORAGE) FROM POWER_FLUX_LOGS WHERE LOG_SOURCE_ID = @POWER_PLANT_ID)
	RETURN @total_energy_storage
END

SELECT CALC_AGE('1980-01-01')