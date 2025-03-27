USE [_MORPHEUS_ENGINE_] -- DB CONNECTION
GO

--INSERÇÃO DE DADOS-EXEMPLO EM TODAS AS TABELAS

-- Inserting data for MACHINE_STATUS
INSERT INTO MACHINE_STATUS (MACHINE_STATUS_NAME) VALUES
('Active'),
('Inactive'),
('Under Maintenance'),
('Idle'),
('Faulty'),
('Running'),
('Shutdown'),
('Paused'),
('Testing'),
('Ready');

-- Inserting data for OPERATION_CATEGORY
INSERT INTO OPERATION_CATEGORY (OPERATION_CATEGORY_NAME) VALUES
('Routine Maintenance'),
('Emergency Repair'),
('System Upgrade'),
('Testing'),
('Monitoring'),
('Inspection'),
('Calibration'),
('System Boot'),
('Shutdown'),
('Startup');

-- Inserting data for OPERATION_STATUS
INSERT INTO OPERATION_STATUS (OPERATION_STATUS_NAME) VALUES
('Completed'),
('Pending'),
('In Progress'),
('Failed'),
('Paused'),
('Scheduled'),
('Cancelled'),
('Delayed'),
('Active'),
('Waiting');

-- Inserting data for OPERATION_LOGS
INSERT INTO OPERATION_LOGS (OPERATION_NAME, OPERATION_CATEGORY_ID, OPERATION_STATUS_ID) VALUES
('Power Plant System Check', 1, 1),
('Water Treatment Inspection', 2, 2),
('Energy Efficiency Test', 3, 1),
('System Calibration', 4, 5),
('Routine Maintenance', 1, 3),
('Component Replacement', 6, 4),
('Shutdown Protocol', 5, 6),
('Sensor Calibration', 7, 9),
('Software Update', 8, 7),
('System Startup', 9, 8);

-- Inserting data for COUNTRIES
INSERT INTO COUNTRIES (COUNTRY_NAME, COUNTRY_CAPITAL_CITY) VALUES
('United States', 'Washington D.C.'),
('Canada', 'Ottawa'),
('United Kingdom', 'London'),
('Germany', 'Berlin'),
('France', 'Paris'),
('Australia', 'Canberra'),
('Japan', 'Tokyo'),
('South Korea', 'Seoul'),
('India', 'New Delhi'),
('Brazil', 'Brasília');

-- Inserting data for USER_GENDERS
INSERT INTO USER_GENDERS (USER_GENDER_NAME) VALUES
('Male'),
('Female'),
('Non-binary'),
('Other');

-- Inserting data for USER_JOBS
INSERT INTO USER_JOBS (USER_JOB_NAME) VALUES
('Engineer'),
('Technician'),
('Manager'),
('Director'),
('Intern'),
('Administrator'),
('Scientist'),
('Analyst'),
('Supervisor'),
('Developer');

-- Inserting data for USER_ACADEMIC_LEVEL
INSERT INTO USER_ACADEMIC_LEVEL (USER_ACADEMIC_LEVEL_NAME) VALUES
('High School'),
('Bachelor'),
('Master'),
('PhD'),
('Associate Degree');

-- Inserting data for USER_LEVEL
INSERT INTO USER_LEVEL (USER_LEVEL_NAME) VALUES
('Junior'),
('Mid-level'),
('Senior'),
('Lead'),
('Manager'),
('Director'),
('Vice President'),
('President'),
('CEO'),
('Intern');

-- Inserting data for USERS
INSERT INTO USERS (USER_FIRST_NAME, USER_LAST_NAME, USER_PASSWORD_HASH, USER_EMAIL, USER_PHONENUMBER, USER_PROFILE_PICTURE_PATH, USER_BIRTHDATE, USER_GENDER_ID, USER_COUNTRY_ID, USER_ADRESS, USER_CITIZEN_CARD_NUMBER, USER_SALARY, USER_BANK_ACCOUNT_NUMBER, USER_ACADEMIC_LEVEL_ID, USER_JOB_ID, USER_LEVEL_ID) VALUES
('John', 'Doe', HASHBYTES('MD5', 'HELLO'), 'john.doe@example.com', 1234567890, '/path/to/pic1.jpg', '1985-01-15', 1, 1, '123 Main St', 123456789, 50000, 111111, 2, 1, 3),
('Jane', 'Smith', HASHBYTES('MD5', 'HELLO'), 'jane.smith@example.com', 9876543210, '/path/to/pic2.jpg', '1990-04-22', 2, 2, '456 Elm St', 987654321, 60000, 222222, 3, 2, 2),
('Alice', 'Johnson', HASHBYTES('MD5', 'HELLO'), 'alice.johnson@example.com', 1122334455, '/path/to/pic3.jpg', '1995-07-30', 2, 3, '789 Pine St', 555555555, 55000, 333333, 2, 3, 4),
('Bob', 'Brown', HASHBYTES('MD5', 'HELLO'), 'bob.brown@example.com', 2233445566, '/path/to/pic4.jpg', '1982-09-12', 1, 4, '321 Oak St', 444444444, 70000, 444444, 4, 4, 5),
('Charlie', 'Williams', HASHBYTES('MD5', 'HELLO'), 'charlie.williams@example.com', 3344556677, '/path/to/pic5.jpg', '1980-11-05', 1, 5, '654 Birch St', 555555555, 65000, 555555, 5, 5, 6),
('David', 'Jones', HASHBYTES('MD5', 'HELLO'), 'david.jones@example.com', 4455667788, '/path/to/pic6.jpg', '1992-01-28', 1, 6, '987 Cedar St', 666666666, 52000, 666666, 6, 6, 1),
('Eva', 'Miller', HASHBYTES('MD5', 'HELLO'), 'eva.miller@example.com', 5566778899, '/path/to/pic7.jpg', '1988-05-20', 2, 7, '321 Birch St', 777777777, 58000, 777777, 3, 7, 2),
('Frank', 'Davis', HASHBYTES('MD5', 'HELLO'), 'frank.davis@example.com', 6677889900, '/path/to/pic8.jpg', '1994-12-14', 1, 8, '432 Pine St', 888888888, 53000, 888888, 4, 8, 3),
('Grace', 'Miller', HASHBYTES('MD5', 'HELLO'), 'grace.miller@example.com', 7788990011, '/path/to/pic9.jpg', '1987-06-16', 2, 9, '543 Oak St', 999999999, 71000, 999999, 2, 9, 4),
('Hank', 'Moore', HASHBYTES('MD5', 'HELLO'), 'hank.moore@example.com', 8899001122, '/path/to/pic10.jpg', '1990-03-03', 1, 10, '876 Maple St', 101010101, 76000, 101010, 5, 10, 5);

-- Inserting data for COMPANY_TYPES
INSERT INTO COMPANY_TYPES (COMPANY_TYPE_NAME) VALUES
('Tech'),
('Energy'),
('Healthcare'),
('Retail'),
('Construction'),
('Transportation'),
('Manufacturing'),
('Finance'),
('Education'),
('Hospitality');

-- Inserting data for COMPANIES
INSERT INTO COMPANIES (COMPANY_NAME, COMPANY_TYPE_ID, COMPANY_COUNTRY_ID, COMPANY_CEO_ID, COMPANY_CAPITAL) VALUES
('TechCorp', 1, 1, 1, 5000000),
('Energy Solutions', 2, 2, 2, 10000000),
('HealthTech', 3, 3, 3, 2000000),
('RetailWorks', 4, 4, 4, 3000000),
('BuildIt', 5, 5, 5, 4000000),
('TransportX', 6, 6, 6, 6000000),
('ManuCo', 7, 7, 7, 7000000),
('FinancePro', 8, 8, 8, 8000000),
('EduCorp', 9, 9, 9, 10000000),
('HospitaLife', 10, 10, 10, 12000000);

-- Inserting data for USER_REL_COMPANY
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

-- Inserting data for POWER_PLANT_TYPE
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

-- Inserting data for POWER_PLANTS
INSERT INTO POWER_PLANTS (POWER_PLANT_NAME, POWER_PLANT_COMPANY_ID, POWER_PLANT_TYPE_ID, POWER_PLANT_LOCATION, POWER_PLANT_MAX_OUTPUT_CAPACITY, POWER_PLANT_STATUS_ID, POWER_PLANT_NEXT_MAINTENANCE_DATE, POWER_PLANT_INSTALLATION_DATE) VALUES
('Solar Plant A', 1, 1, 'California', 1000, 1, '2025-06-15', '2019-01-01'),
('Wind Farm B', 2, 2, 'Texas', 2000, 2, '2025-08-22', '2020-02-01'),
('Hydro Dam C', 3, 3, 'Oregon', 1500, 1, '2025-09-15', '2018-03-01'),
('Geothermal Plant D', 4, 4, 'Nevada', 1200, 1, '2025-07-10', '2017-04-01'),
('Nuclear Plant E', 5, 5, 'Florida', 3000, 2, '2025-10-30', '2016-05-01'),
('Biomass Plant F', 6, 6, 'Georgia', 800, 3, '2025-12-01', '2018-06-01'),
('Coal Plant G', 7, 7, 'West Virginia', 2500, 1, '2025-11-15', '2015-07-01'),
('Gas Plant H', 8, 8, 'Louisiana', 1500, 2, '2025-09-01', '2017-08-01'),
('Tidal Plant I', 9, 9, 'Maine', 500, 1, '2025-06-10', '2021-09-01'),
('Fusion Plant J', 10, 10, 'New York', 10000, 2, '2025-12-20', '2023-05-01');

-- Insert other tables in a similar manner