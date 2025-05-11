--==================================================================================================================================
--============= DATA_INSERTION.sql =================================================================================================
--============= SCRIPT DE INSERÇÃO DE DADOS-EXEMPLO EM TODAS AS TABELAS DA BASE DE DADOS ===========================================
--==================================================================================================================================

USE [_MORPHEUS_ENGINE_] -- DB CONNECTION
GO

--NOTA: TIMESTAMPS E PRIMARY KEYS NÃO SÃO ATRIBUIDAS MANUALMENTE NESTE SCRIPT, VISTO QUE ESTAS SÃO AUTOMÁTICAMENTE GERADAS PELO SQL

INSERT INTO MACHINE_STATUS (MACHINE_STATUS_NAME) VALUES
('Operational'),
('Maintenance Required'),
('Offline'),
('Idle'),
('Active'),
('Faulty'),
('Running'),
('Paused'),
('Testing'),
('Ready');
GO

INSERT INTO OPERATION_CATEGORY (OPERATION_CATEGORY_NAME) VALUES
('Installation'),
('Inspection'),
('Calibration'),
('Upgrade'),
('Repair'),
('Shutdown'),
('Startup'),
('Diagnostic'),
('Replacement'),
('Monitoring');
GO

INSERT INTO OPERATION_STATUS (OPERATION_STATUS_NAME) VALUES
('Completed'),
('In Progress'),
('Pending'),
('Failed'),
('Cancelled'),
('Delayed'),
('Scheduled'),
('Aborted'),
('Successful'),
('Reopened');
GO

INSERT INTO OPERATION_LOGS (OPERATION_NAME, OPERATION_CATEGORY_ID, OPERATION_STATUS_ID) VALUES
('OpLog 1', 1, 1),
('OpLog 2', 2, 2),
('OpLog 3', 3, 3),
('OpLog 4', 4, 4),
('OpLog 5', 5, 5),
('OpLog 6', 6, 6),
('OpLog 7', 7, 7),
('OpLog 8', 8, 8),
('OpLog 9', 9, 9),
('OpLog 10', 10, 10);
GO

INSERT INTO COUNTRIES (COUNTRY_NAME, COUNTRY_CAPITAL_CITY) VALUES
('Country A', 'Capital A'),
('Country B', 'Capital B'),
('Country C', 'Capital C'),
('Country D', 'Capital D'),
('Country E', 'Capital E'),
('Country F', 'Capital F'),
('Country G', 'Capital G'),
('Country H', 'Capital H'),
('Country I', 'Capital I'),
('Country J', 'Capital J');
GO

INSERT INTO USER_GENDERS (USER_GENDER_NAME) VALUES
('Male'),
('Female'),
('Non-Binary'),
('Other'),
('Prefer not to say')
GO

INSERT INTO USER_JOBS (USER_JOB_NAME) VALUES
('Engineer'),
('Technician'),
('Scientist'),
('Manager'),
('Analyst'),
('Developer'),
('Administrator'),
('Supervisor'),
('Director'),
('Consultant');
GO

INSERT INTO USER_ACADEMIC_LEVEL (USER_ACADEMIC_LEVEL_NAME) VALUES
('High School'),
('Certificate'),
('Some College'),
('Associate Degree'),
('Bachelor''s Degree'),
('Master''s Degree'),
('Diploma'),
('Postgraduate'),
('PhD');
GO

INSERT INTO USER_LEVEL (USER_LEVEL_NAME) VALUES
('USER'),
('DATA_ANALYST'),
('DEVELOPER'),
('ADMINISTRATOR')
GO

INSERT INTO USERS (
    USER_FIRST_NAME,
    USER_LAST_NAME,
    USER_PASSWORD_HASH,
    USER_EMAIL,
    USER_PHONENUMBER,
    USER_PROFILE_PICTURE_PATH,
    USER_BIRTHDATE,
    USER_GENDER_ID,
    USER_COUNTRY_ID,
    USER_ADRESS,
    USER_CITIZEN_CARD_NUMBER,
    USER_SALARY,
    USER_BANK_ACCOUNT_NUMBER,
    USER_ACADEMIC_LEVEL_ID,
    USER_JOB_ID,
    USER_LEVEL_ID
) VALUES
('Alice', 'Anderson', 0x414141, 'alice.anderson@example.com', '1234567890', 'C:\Pics\alice.jpg', '1980-01-01', 1, 1, '123 A St', 1001, 55000, 2001, 3, 1, 4),
('Bob', 'Brown', 0x424242, 'bob.brown@example.com', '2345678901', 'C:\Pics\bob.jpg', '1985-02-02', 2, 2, '234 B St', 1002, 60000, 2002, 4, 2, 2),
('Carol', 'Clark', 0x434343, 'carol.clark@example.com', '3456789012', 'C:\Pics\carol.jpg', '1990-03-03', 3, 3, '345 C St', 1003, 65000, 2003, 5, 3, 4),
('David', 'Davis', 0x444444, 'david.davis@example.com', '4567890123', 'C:\Pics\david.jpg', '1995-04-04', 4, 4, '456 D St', 1004, 70000, 2004, 1, 4, 1),
('Eva', 'Edwards', 0x454545, 'eva.edwards@example.com', '5678901234', 'C:\Pics\eva.jpg', '1988-05-05', 5, 5, '567 E St', 1005, 75000, 2005, 2, 5, 2),
('Frank', 'Foster', 0x464646, 'frank.foster@example.com', '6789012345', 'C:\Pics\frank.jpg', '1982-06-06', 1, 6, '678 F St', 1006, 80000, 2006, 3, 6, 4),
('Grace', 'Green', 0x474747, 'grace.green@example.com', '7890123456', 'C:\Pics\grace.jpg', '1979-07-07', 2, 7, '789 G St', 1007, 85000, 2007, 4, 7, 1),
('Henry', 'Harris', 0x484848, 'henry.harris@example.com', '8901234567', 'C:\Pics\henry.jpg', '1987-08-08', 3, 8, '890 H St', 1008, 90000, 2008, 5, 8, 3),
('Ivy', 'Irwin', 0x494949, 'ivy.irwin@example.com', '9012345678', 'C:\Pics\ivy.jpg', '1992-09-09', 4, 9, '901 I St', 1009, 95000, 2009, 6, 9, 2),
('Jack', 'Jones', 0x4A4A4A, 'jack.jones@example.com', '0123456789', 'C:\Pics\jack.jpg', '1996-10-10', 5, 10, '012 J St', 1010, 100000, 2010, 7, 10, 1),
('Kelly', 'King', 0x4B4B4B, 'kelly.king@example.com', '1122334455', 'C:\Pics\kelly.jpg', '1993-11-11', 1, 1, '112 K St', 1011, 105000, 2011, 8, 1, 2);
GO

INSERT INTO COMPANY_TYPES (COMPANY_TYPE_NAME) VALUES
('Energy'),
('Tech'),
('Construction'),
('Finance'),
('Healthcare'),
('Logistics'),
('Manufacturing'),
('Consulting'),
('Retail'),
('Services');
GO

INSERT INTO COMPANIES (COMPANY_NAME, COMPANY_TYPE_ID, COMPANY_COUNTRY_ID, COMPANY_CEO_ID, COMPANY_CAPITAL) VALUES
('EnergyOne', 1, 1, 1, 1000000),
('TechNova', 2, 2, 2, 2000000),
('ConstructCo', 3, 3, 3, 1500000),
('FinancePlus', 4, 4, 4, 2500000),
('HealthCare Inc', 5, 5, 5, 1200000),
('LogiTrans', 6, 6, 6, 1800000),
('ManuWorks', 7, 7, 7, 2200000),
('ConsultCorp', 8, 8, 8, 1300000),
('RetailMart', 9, 9, 9, 1600000),
('ServiceHub', 10, 10, 10, 2100000);
GO

INSERT INTO USER_REL_COMPANY (USER_COMPANY_ID, USER_ID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);
GO

INSERT INTO POWER_PLANT_TYPE (POWER_PLANT_TYPE_NAME) VALUES
('Solar'),
('Wind'),
('Hydro'),
('Geothermal'),
('Nuclear'),
('Biomass'),
('Coal'),
('Gas'),
('Tidal'),
('Fusion');
GO

INSERT INTO POWER_PLANTS (
    POWER_PLANT_NAME,
    POWER_PLANT_COMPANY_ID,
    POWER_PLANT_TYPE_ID,
    POWER_PLANT_LOCATION,
    POWER_PLANT_MAX_OUTPUT_CAPACITY,
    POWER_PLANT_STATUS_ID,
    POWER_PLANT_NEXT_MAINTENANCE_DATE,
    POWER_PLANT_INSTALLATION_DATE
) VALUES
('Plant A', 1, 1, 'Location A', 1000, 1, '2025-01-01', '2020-01-01'),
('Plant B', 2, 2, 'Location B', 2000, 2, '2025-02-01', '2020-02-01'),
('Plant C', 3, 3, 'Location C', 1500, 3, '2025-03-01', '2020-03-01'),
('Plant D', 4, 4, 'Location D', 1200, 4, '2025-04-01', '2020-04-01'),
('Plant E', 5, 5, 'Location E', 3000, 5, '2025-05-01', '2020-05-01'),
('Plant F', 6, 6, 'Location F', 800, 6, '2025-06-01', '2020-06-01'),
('Plant G', 7, 7, 'Location G', 2500, 7, '2025-07-01', '2020-07-01'),
('Plant H', 8, 8, 'Location H', 1500, 8, '2025-08-01', '2020-08-01'),
('Plant I', 9, 9, 'Location I', 500, 9, '2025-09-01', '2020-09-01'),
('Plant J', 10, 10, 'Location J', 10000, 10, '2025-10-01', '2020-10-01');
GO

INSERT INTO POWER_STORAGE_DEVICES (
    POWER_PLANT_ID,
    POWER_STORAGE_DEVICE_MANUFACTURER_ID,
    POWER_STORAGE_DEVICE_NAME,
    POWER_STORAGE_DEVICE_MAX_CAPACITY,
    POWER_STORAGE_DEVICE_STATUS_ID
) VALUES
(1, 1, 'Storage A', 500, 1),
(2, 2, 'Storage B', 600, 2),
(3, 3, 'Storage C', 700, 3),
(4, 4, 'Storage D', 800, 4),
(5, 5, 'Storage E', 900, 5),
(6, 6, 'Storage F', 1000, 6),
(7, 7, 'Storage G', 1100, 7),
(8, 8, 'Storage H', 1200, 8),
(9, 9, 'Storage I', 1300, 9),
(10, 10, 'Storage J', 1400, 10);
GO

INSERT INTO POWER_FLUX_LOGS (LOG_SOURCE_ID, LOG_TIME, LOG_POWER_OUTPUT, LOG_POWER_CONSUMPTION, LOG_POWER_STORAGE) VALUES 
(1, GETDATE(), 950, 600, 350),        -- 600 + 350 = 950
(2, GETDATE(), 1900, 1200, 700),      -- 1200 + 700 = 1900
(3, GETDATE(), 1400, 800, 600),       -- 800 + 600 = 1400
(4, GETDATE(), 1150, 600, 550),       -- 600 + 550 = 1150
(5, GETDATE(), 2900, 1700, 1200),     -- 1700 + 1200 = 2900
(6, GETDATE(), 750, 400, 350),        -- 400 + 350 = 750
(7, GETDATE(), 2400, 1300, 1100),     -- 1300 + 1100 = 2400
(8, GETDATE(), 1450, 700, 750),       -- 700 + 750 = 1450
(9, GETDATE(), 480, 300, 180),        -- 300 + 180 = 480
(10, GETDATE(), 9800, 4800, 5000);    -- 4800 + 5000 = 9800
GO

INSERT INTO POWER_PLANT_MAINTENANCE_LOGS (
    OPERATION_ID,
    POWER_PLANT_ID,
    MAINTENANCE_DESCRIPTION,
    MAINTENANCE_DATE,
    MAINTENANCE_TECHNITIAN_ID,
    MAINTENANCE_RESULTS_INFO
) VALUES
(1, 1, 'Check A', '2021-01-01', 1, 0x4141),
(2, 2, 'Check B', '2021-02-01', 2, 0x4242),
(3, 3, 'Check C', '2021-03-01', 3, 0x4343),
(4, 4, 'Check D', '2021-04-01', 4, 0x4444),
(5, 5, 'Check E', '2021-05-01', 5, 0x4545),
(6, 6, 'Check F', '2021-06-01', 6, 0x4646),
(7, 7, 'Check G', '2021-07-01', 7, 0x4747),
(8, 8, 'Check H', '2021-08-01', 8, 0x4848),
(9, 9, 'Check I', '2021-09-01', 9, 0x4949),
(10, 10, 'Check J', '2021-10-01', 10, 0x4A4A);
GO

INSERT INTO LIFE_SUPPORT_SYSTEMS_TYPES (LIFE_SUPPORT_SYSTEMS_TYPE_NAME) VALUES
('Oxygen Generator'),
('Water Purification'),
('Food Production'),
('Waste Recycling'),
('CO2 Scrubbing'),
('Humidity Control'),
('Temperature Regulation'),
('Pressure Stabilizer'),
('Air Filtration'),
('Energy Recovery');
GO

INSERT INTO FOOD_TYPES (FOOD_TYPE_NAME) VALUES
('Vegetables'),
('Fruits'),
('Grains'),
('Meat'),
('Dairy'),
('Legumes'),
('Nuts'),
('Seeds'),
('Herbs'),
('Fish');
GO

INSERT INTO LIFE_SUPPORT_SYSTEMS (
    SYSTEM_NAME,
    SYSTEM_TYPE_ID,
    SYSTEM_COMPANY_ID,
    SYSTEM_LOCATION,
    SYSTEM_STATUS_ID,
    SYSTEM_MAX_OUTPUT_CAPACITY,
    SYSTEM_INSTALLATION_DATE,
    SYSTEM_NEXT_MAINTENANCE_DATE
) VALUES
('LifeSys A', 1, 1, 'Module A', 1, 100, '2020-01-01', '2021-01-01'),
('LifeSys B', 2, 2, 'Module B', 2, 200, '2020-02-01', '2021-02-01'),
('LifeSys C', 3, 3, 'Module C', 3, 300, '2020-03-01', '2021-03-01'),
('LifeSys D', 4, 4, 'Module D', 4, 400, '2020-04-01', '2021-04-01'),
('LifeSys E', 5, 5, 'Module E', 5, 500, '2020-05-01', '2021-05-01'),
('LifeSys F', 6, 6, 'Module F', 6, 600, '2020-06-01', '2021-06-01'),
('LifeSys G', 7, 7, 'Module G', 7, 700, '2020-07-01', '2021-07-01'),
('LifeSys H', 8, 8, 'Module H', 8, 800, '2020-08-01', '2021-08-01'),
('LifeSys I', 9, 9, 'Module I', 9, 900, '2020-09-01', '2021-09-01'),
('LifeSys J', 10, 10, 'Module J', 10, 1000, '2020-10-01', '2021-10-01');
GO

INSERT INTO LIFE_SUPPORT_SYSTEM_MAINTENANCE_LOGS (
    OPERATION_ID,
    SYSTEM_ID,
    MAINTENANCE_DESCRIPTION,
    MAINTENANCE_DATE,
    MAINTENANCE_TECHNITIAN_ID,
    MAINTENANCE_RESULTS_INFO
) VALUES
(1, 1, 'LS Maintenance A', '2021-01-10', 1, 'OK'),
(2, 2, 'LS Maintenance B', '2021-02-10', 2, 'OK'),
(3, 3, 'LS Maintenance C', '2021-03-10', 3, 'OK'),
(4, 4, 'LS Maintenance D', '2021-04-10', 4, 'OK'),
(5, 5, 'LS Maintenance E', '2021-05-10', 5, 'OK'),
(6, 6, 'LS Maintenance F', '2021-06-10', 6, 'OK'),
(7, 7, 'LS Maintenance G', '2021-07-10', 7, 'OK'),
(8, 8, 'LS Maintenance H', '2021-08-10', 8, 'OK'),
(9, 9, 'LS Maintenance I', '2021-09-10', 9, 'OK'),
(10, 10, 'LS Maintenance J', '2021-10-10', 10, 'OK');
GO

INSERT INTO OXIGEN_PRODUCTION_LOGS (LOG_SOURCE_ID, LOG_OXIGEN_OUTPUT, LOG_OXIGEN_CONSUMPTION, LOG_OXIGEN_STORAGE) VALUES
(1, 80, 60, 150),
(2, 85, 65, 160),
(3, 90, 70, 170),
(4, 95, 75, 180),
(5, 100, 80, 190),
(6, 105, 85, 200),
(7, 110, 90, 210),
(8, 115, 95, 220),
(9, 120, 100, 230),
(10, 125, 105, 240);
GO

INSERT INTO WATER_EXTRACTION_LOGS (LOG_SOURCE_ID, LOG_WATER_OUTPUT, LOG_WATER_CONSUMPTION, LOG_WATER_STORAGE) VALUES
(1, 150, 120, 300),
(2, 155, 125, 310),
(3, 160, 130, 320),
(4, 165, 135, 330),
(5, 170, 140, 340),
(6, 175, 145, 350),
(7, 180, 150, 360),
(8, 185, 155, 370),
(9, 190, 160, 380),
(10, 195, 165, 390);
GO

INSERT INTO FOOD_PRODUCTION_LOGS (
    LOG_SOURCE_ID,
    LOG_FOOD_TYPE_ID,
    LOG_FOOD_PRODUCTION,
    LOG_FOOD_DISTRIBUTION,
    LOG_FOOD_STORAGE,
    LOG_FOOD_EXPIRATION_DATE
) VALUES
(1, 1, 500, 450, 200, '2022-12-31'),
(2, 2, 510, 460, 210, '2022-12-31'),
(3, 3, 520, 470, 220, '2022-12-31'),
(4, 4, 530, 480, 230, '2022-12-31'),
(5, 5, 540, 490, 240, '2022-12-31'),
(6, 6, 550, 500, 250, '2022-12-31'),
(7, 7, 560, 510, 260, '2022-12-31'),
(8, 8, 570, 520, 270, '2022-12-31'),
(9, 9, 580, 530, 280, '2022-12-31'),
(10, 10, 590, 540, 290, '2022-12-31');
GO

INSERT INTO WASTE_TREATMENT_LOGS (LOG_SOURCE_ID, LOG_WASTE_INPUT, LOG_TREATED_WASTE_OUTPUT) VALUES
(1, 100, 80),
(2, 105, 85),
(3, 110, 90),
(4, 115, 95),
(5, 120, 100),
(6, 125, 105),
(7, 130, 110),
(8, 135, 115),
(9, 140, 120),
(10, 145, 125);
GO

INSERT INTO CITY_CONSTRUCTION_STATUS (CITY_CONSTRUCTION_STATUS_NAME) VALUES
('Planned'),
('In Progress'),
('Completed'),
('On Hold'),
('Delayed'),
('Under Review'),
('Approved'),
('Cancelled'),
('Revised'),
('Finalized');
GO

INSERT INTO CITY_BUILDING_TYPES (CITY_BUILDING_TYPE_NAME) VALUES
('Residential'),
('Commercial'),
('Industrial'),
('Civic'),
('Recreational'),
('Educational'),
('Medical'),
('Mixed Use'),
('Office'),
('Retail');
GO

INSERT INTO CONSTRUCTION_STATUS (CONSTRUCTION_STATUS_NAME) VALUES
('Not Started'),
('Started'),
('Ongoing'),
('Paused'),
('Completed'),
('Delayed'),
('Cancelled'),
('Reopened'),
('Under Review'),
('Finalized');
GO

INSERT INTO CITIES (
    CITY_NAME,
    CITY_LOCATION,
    CITY_PRESIDENT_ID,
    CITY_BUILT_DATE,
    CITY_CONSTRUCTION_STATUS_ID
) VALUES
('City A', 'Loc A', 1, '2010-01-01', 1),
('City B', 'Loc B', 2, '2011-02-02', 2),
('City C', 'Loc C', 3, '2012-03-03', 3),
('City D', 'Loc D', 4, '2013-04-04', 4),
('City E', 'Loc E', 5, '2014-05-05', 5),
('City F', 'Loc F', 6, '2015-06-06', 6),
('City G', 'Loc G', 7, '2016-07-07', 7),
('City H', 'Loc H', 8, '2017-08-08', 8),
('City I', 'Loc I', 9, '2018-09-09', 9),
('City J', 'Loc J', 10, '2019-10-10', 10);
GO

INSERT INTO CITY_ENVIRONMENTAL_DATA (CITY_ID, CITY_AVERAGE_TEMPERATURE, CITY_AVERAGE_HUMIDITY, CITY_OXYGEN_LEVELS) VALUES
(1, 25, 60, 21),
(2, 26, 61, 20),
(3, 27, 62, 22),
(4, 28, 63, 21),
(5, 29, 64, 23),
(6, 30, 65, 22),
(7, 31, 66, 21),
(8, 32, 67, 20),
(9, 33, 68, 22),
(10, 34, 69, 23);
GO

INSERT INTO CITY_DEMOGRAPHICS_DATA (CITY_ID, CITY_SURFACE_AREA, CITY_POPULATION, CITY_LIFE_EXPECTANCY, CITY_CRIME_RATE) VALUES
(1, 150, 5000, 78, 5),
(2, 160, 5500, 79, 6),
(3, 170, 6000, 80, 7),
(4, 180, 6500, 77, 5),
(5, 190, 7000, 76, 6),
(6, 200, 7500, 81, 7),
(7, 210, 8000, 82, 8),
(8, 220, 8500, 80, 7),
(9, 230, 9000, 79, 6),
(10, 240, 9500, 78, 5);
GO

INSERT INTO CITY_ECONOMICAL_DATA (CITY_ID, CITY_LIFE_COST, CITY_GDP, CITY_AVERAGE_INCOME) VALUES
(1, 70, 500000, 35000),
(2, 72, 520000, 36000),
(3, 74, 540000, 37000),
(4, 76, 560000, 38000),
(5, 78, 580000, 39000),
(6, 80, 600000, 40000),
(7, 82, 620000, 41000),
(8, 84, 640000, 42000),
(9, 86, 660000, 43000),
(10, 88, 680000, 44000);
GO

INSERT INTO CITY_REL_POWERPLANTS (CITY_ID, CITY_ENERGY_SOURCE_ID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);
GO

INSERT INTO CITY_REL_LIFE_SUPPORT_SYSTEMS (CITY_ID, CITY_LIFE_SUPPORT_SYSTEM_ID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);
GO

INSERT INTO CITY_BUILDINGS (
    BUILDING_CITY_ID,
    BUILDING_TYPE_ID,
    BUILDING_NAME,
    BUILDING_LOCATION,
    BUILDING_HEIGHT,
    BUILDING_WIDTH,
    BUILDING_LENGTH,
    BUILDING_POWER_CONSUMPTION,
    BUILDING_CONSTRUCTION_DATE,
    BUILDING_PLANT,
    BUILDING_OWNER_USER_ID,
    BUILDING_CONSTRUCTION_STATUS_ID,
    BUILDING_COST
) VALUES
(1, 1, 'Building A', 'Loc A', 10, 20, 30, 500, '2020-01-01', 0x, 1, 2, 100000),
(2, 2, 'Building B', 'Loc B', 11, 21, 31, 510, '2020-02-01', 0x, 2, 9, 110000),
(3, 3, 'Building C', 'Loc C', 12, 22, 32, 520, '2020-03-01', 0x, 3, 3, 120000),
(4, 4, 'Building D', 'Loc D', 13, 23, 33, 530, '2020-04-01', 0x, 4, 4, 130000),
(5, 5, 'Building E', 'Loc E', 14, 24, 34, 540, '2020-05-01', 0x, 5, 5, 140000),
(6, 6, 'Building F', 'Loc F', 15, 25, 35, 550, '2020-06-01', 0x, 6, 6, 150000),
(7, 7, 'Building G', 'Loc G', 16, 26, 36, 560, '2020-07-01', 0x, 7, 7, 160000),
(8, 8, 'Building H', 'Loc H', 17, 27, 37, 570, '2020-08-01', 0x, 8, 8, 170000),
(9, 9, 'Building I', 'Loc I', 18, 28, 38, 580, '2020-09-01', 0x, 9, 10, 180000),
(10, 10, 'Building J', 'Loc J', 19, 29, 39, 590, '2020-10-01', 0x, 10, 1, 190000);
GO

INSERT INTO CONSTRUCTION_LOGS (
    CONSTRUCTION_BUILDING_ID,
    CONSTRUCTION_COMPANY_ID,
    CONSTRUCTION_LOG_DISCRIPTION
) VALUES
(1, 1, 'Log A'),
(2, 2, 'Log B'),
(3, 3, 'Log C'),
(4, 4, 'Log D'),
(5, 5, 'Log E'),
(6, 6, 'Log F'),
(7, 7, 'Log G'),
(8, 8, 'Log H'),
(9, 9, 'Log I'),
(10, 10, 'Log J');
GO

INSERT INTO VEHICLE_TYPES (VEHICLE_TYPE_NAME) VALUES
('Rover'),
('Drone'),
('Truck'),
('Car'),
('Bus'),
('Van'),
('Helicopter'),
('Tractor'),
('Excavator'),
('Ambulance');
GO

INSERT INTO VEHICLE_FUEL_TYPES (VEHICLE_FUEL_TYPE_NAME) VALUES
('Electric'),
('Hydrogen'),
('Gasoline'),
('Diesel'),
('Hybrid'),
('Biofuel'),
('Solar'),
('Ethanol'),
('Propane'),
('Kerosene');
GO

INSERT INTO VEHICLES (
    VEHICLE_SERIAL_NUMBER,
    VEHICLE_MANUFACTURER_ID,
    VEHICLE_PRODUCTION_DATE,
    VEHICLE_NAME,
    VEHICLE_TYPE_ID,
    VEHICLE_MASS,
    VEHICLE_LENGTH,
    VEHICLE_WIDTH,
    VEHICLE_HEIGHT,
    VEHICLE_FUEL_TYPE_ID,
    VEHICLE_NEXT_MAINTENANCE_DATE
) VALUES
('SN-001', 1, '2020-01-01', 'Vehicle 1', 1, 1500, 3.5, 2.0, 2.5, 1, '2021-01-01'),
('SN-002', 2, '2020-02-01', 'Vehicle 2', 2, 800, 2.5, 1.8, 1.5, 2, '2021-02-01'),
('SN-003', 3, '2020-03-01', 'Vehicle 3', 3, 2000, 4.0, 2.5, 3.0, 3, '2021-03-01'),
('SN-004', 4, '2020-04-01', 'Vehicle 4', 4, 1200, 3.0, 2.0, 2.2, 4, '2021-04-01'),
('SN-005', 5, '2020-05-01', 'Vehicle 5', 5, 1800, 3.8, 2.2, 2.8, 5, '2021-05-01'),
('SN-006', 6, '2020-06-01', 'Vehicle 6', 6, 1600, 3.6, 2.1, 2.6, 6, '2021-06-01'),
('SN-007', 7, '2020-07-01', 'Vehicle 7', 7, 2200, 4.2, 2.8, 3.2, 7, '2021-07-01'),
('SN-008', 8, '2020-08-01', 'Vehicle 8', 8, 1400, 3.4, 2.0, 2.4, 8, '2021-08-01'),
('SN-009', 9, '2020-09-01', 'Vehicle 9', 9, 1300, 3.3, 1.9, 2.3, 9, '2021-09-01'),
('SN-010', 10, '2020-10-01', 'Vehicle 10', 10, 1700, 3.7, 2.3, 2.7, 10, '2021-10-01');
GO

INSERT INTO VEHICLES_MAINTENANCE_LOGS (
    OPERATION_ID,
    VEHICLE_ID,
    MAINTENANCE_DESCRIPTION,
    MAINTENANCE_DATE,
    MAINTENANCE_TECHNITIAN,
    MAINTENANCE_RESULTS_INFO
) VALUES
(1, 1, 'Veh Maint A', '2021-01-15', 1, 0x4141),
(2, 2, 'Veh Maint B', '2021-02-15', 2, 0x4242),
(3, 3, 'Veh Maint C', '2021-03-15', 3, 0x4343),
(4, 4, 'Veh Maint D', '2021-04-15', 4, 0x4444),
(5, 5, 'Veh Maint E', '2021-05-15', 5, 0x4545),
(6, 6, 'Veh Maint F', '2021-06-15', 6, 0x4646),
(7, 7, 'Veh Maint G', '2021-07-15', 7, 0x4747),
(8, 8, 'Veh Maint H', '2021-08-15', 8, 0x4848),
(9, 9, 'Veh Maint I', '2021-09-15', 9, 0x4949),
(10, 10, 'Veh Maint J', '2021-10-15', 10, 0x4A4A);
GO

INSERT INTO LOGISTICS_OPERATION_TYPE (OPERATION_TYPE_NAME) VALUES
('Cargo Transport'),
('Crew Shuttle'),
('Resupply'),
('Evacuation'),
('Exploration'),
('Maintenance Run'),
('Test Flight'),
('Data Collection'),
('Survey Mission'),
('Emergency Response');
GO

INSERT INTO SPACE_LOGISTICS (
    OPERATION_ID,
    MISSION_NAME,
    MISSION_TYPE_ID,
    MISSION_COMPANY_ID,
    MISSION_TRANSPORT_VEHICLE_ID,
    DESCRIPTION,
    LAUNCH_DATE,
    LANDING_DATE,
    LAUNCH_LOCATION,
    LANDING_LOCATION,
    BUDGET
) VALUES
(1, 'Mission A', 1, 1, 1, 'Desc A', '2022-01-01', '2022-01-10', 'Launch A', 'Land A', 500000),
(2, 'Mission B', 2, 2, 2, 'Desc B', '2022-02-01', '2022-02-10', 'Launch B', 'Land B', 600000),
(3, 'Mission C', 3, 3, 3, 'Desc C', '2022-03-01', '2022-03-10', 'Launch C', 'Land C', 700000),
(4, 'Mission D', 4, 4, 4, 'Desc D', '2022-04-01', '2022-04-10', 'Launch D', 'Land D', 800000),
(5, 'Mission E', 5, 5, 5, 'Desc E', '2022-05-01', '2022-05-10', 'Launch E', 'Land E', 900000),
(6, 'Mission F', 6, 6, 6, 'Desc F', '2022-06-01', '2022-06-10', 'Launch F', 'Land F', 1000000),
(7, 'Mission G', 7, 7, 7, 'Desc G', '2022-07-01', '2022-07-10', 'Launch G', 'Land G', 1100000),
(8, 'Mission H', 8, 8, 8, 'Desc H', '2022-08-01', '2022-08-10', 'Launch H', 'Land H', 1200000),
(9, 'Mission I', 9, 9, 9, 'Desc I', '2022-09-01', '2022-09-10', 'Launch I', 'Land I', 1300000),
(10, 'Mission J', 10, 10, 10, 'Desc J', '2022-10-01', '2022-10-10', 'Launch J', 'Land J', 1400000);
GO

INSERT INTO SCIENTIFIC_TASK_TYPES (TASK_TYPE_NAME) VALUES
('Soil Analysis'),
('Atmospheric Sampling'),
('Mineral Survey'),
('Geological Mapping'),
('Biological Study'),
('Radiation Measurement'),
('Water Analysis'),
('Thermal Imaging'),
('Seismic Testing'),
('Chemical Analysis');
GO

INSERT INTO TASK_EVENTS (TASK_EVENT_NAME) VALUES
('Sample Collected'),
('Sample Processed'),
('Data Uploaded'),
('Analysis Completed'),
('Error Detected'),
('Re-sample Required'),
('Calibration Done'),
('Measurement Recorded'),
('Report Generated'),
('Review Completed');
GO

INSERT INTO SCIENTIFIC_PROSPECTION_LOGS (
    TASK_OPERATION_ID,
    TASK_DEVICE_ID,
    TASK_LOCATION,
    TASK_TYPE_ID,
    TASK_EVENT_ID,
    TASK_RAW_DATA
) VALUES
(1, 1, 'Sector 1', 1, 1, 0x414141),
(2, 2, 'Sector 2', 2, 2, 0x424242),
(3, 3, 'Sector 3', 3, 3, 0x434343),
(4, 4, 'Sector 4', 4, 4, 0x444444),
(5, 5, 'Sector 5', 5, 5, 0x454545),
(6, 6, 'Sector 6', 6, 6, 0x464646),
(7, 7, 'Sector 7', 7, 7, 0x474747),
(8, 8, 'Sector 8', 8, 8, 0x484848),
(9, 9, 'Sector 9', 9, 9, 0x494949),
(10, 10, 'Sector 10', 10, 10, 0x4A4A4A);
GO
