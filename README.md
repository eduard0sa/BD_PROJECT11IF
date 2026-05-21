# 🚀 DATABASES PROJECT 11ºIF - MORPHEUS_ENGINE

**A comprehensive SQL Server database system for managing Mars terraforming operations, urban development, resource allocation, and civilization management.**

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)
[![Database](https://img.shields.io/badge/Database-SQL%20Server-red.svg)]()

---

## 📋 Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Project Structure](#project-structure)
- [Installation](#installation)
- [Database Schema](#database-schema)
- [Key Components](#key-components)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

---

## Overview

Born as a school group project, this concept showcases knowledge acquired throughout 2024-2025 school year.

MORPHEUS_ENGINE is a complete SQL Server database concept designed to manage all aspects of an eventual Mars terraforming and civilization infrastructure. It encompasses user management, company operations, city planning, building management, power systems, life support systems, vehicle logistics, and scientific prospection.

The database is built encompassing various technologies inside the MSSQL SERVER environment:
- Relational data structures;
- Automated business logic through stored procedures and triggers;
- Real-time monitoring via views and queries;
- Scheduled maintenance and mailling jobs.

---

## ✨ Features

### Core Management Systems
- **👥 User Management**: Authentication, role-based access, user administration
- **🏢 Company Operations**: Multi-company management, company hierarchy, resource allocation
- **🏙️ City Planning**: Urban development, city zones, expansion management
- **🏗️ Building Management**: Construction tracking, building types, maintenance schedules
- **⚡ Power Systems**: Power plant management, energy distribution, grid optimization
- **🌍 Life Support Systems**: Atmospheric management, water recycling, oxygen production
- **🚗 Vehicle & Logistics**: Spacecraft/vehicle inventory, logistics tracking, travel routes
- **🔬 Scientific Prospection**: Research data, exploration missions, discoveries

### Technical Features
- **📊 Automated Views**: Pre-built queries for reporting and analytics;
- **⚙️ Stored Procedures**: Business logic implementation and data operations;
- **🔔 Triggers**: Automated email notifications and event handling on data insertion and update;
- **📅 Scheduled Jobs**: Maintenance reports, data synchronization, automated tasks (using SQL Server Agent);
- **📧 Mailing System**: Integrated notification service for critical events.

---

## 📁 Project Structure

```
MARS TERRAFORMING AND CIVILIZATION MANAGEMENT/
│
├── SOURCE/                          # All database and source files
│   ├── DB_CONSTRUCTION.bat          # Batch script to build database
│   ├── DB_DESTRUCTOR.bat            # Batch script to destroy database
│   ├── DB_DESTRUCTION_QUERY.sql     # SQL queries to drop database
│   │
│   ├── SQL/                         # Main SQL scripts folder
│   │   ├── DB_BUILD/                # Database initialization
│   │   │   ├── DATABASE_BUILD_QUERY.sql    # Schema creation
│   │   │   └── DATA_INSERTION.sql          # Initial data seeding
│   │   │
│   │   ├── FUNCTIONS/               # Custom SQL Functions
│   │   │   ├── MATH_FUNCTIONS.sql
│   │   │   ├── ENERGY_MGMT_FUNCTIONS.sql
│   │   │   └── USER_MGMT_FUNCTIONS.sql
│   │   │
│   │   ├── GENERIC_VIEWS/           # Reporting Views
│   │   │   ├── USER_VIEWS.sql
│   │   │   ├── COMPANY_MGMT_VIEWS.sql
│   │   │   ├── CITY_MGMT_VIEWS.sql
│   │   │   ├── BUILDINGS_MGMT_VIEWS.sql
│   │   │   ├── POWER_MGMT_VIEWS.sql
│   │   │   ├── VEHICLE_SPACECRAFT_VIEWS.sql
│   │   │   └── LOGISTICS_MGMT_VIEW.sql
│   │   │
│   │   ├── STORED_PROCEDURES/       # Business Logic
│   │   │   ├── DATA_INSERTION_PROCEDURES/
│   │   │   │   ├── USERS_DATA_INSERTION_PROCEDURES.sql
│   │   │   │   ├── COMPANIES_DATA_INSERTION_PROCEDURES.sql
│   │   │   │   ├── POWER_PLANTS_DATA_INSERTION_PROCEDURES.sql
│   │   │   │   ├── LIFE_SUPPORT_SYSTEMS_DATA_INSERTION_PROCEDURES.sql
│   │   │   │   └── VEHICLES_AND_SPACE_LOGISTICS_DATA_INSERTION_PROCEDURES.sql
│   │   │   ├── DATA_QUERY_PROCEDURES/
│   │   │   │   ├── USER_QUERY_PROCEDURES.sql
│   │   │   │   └── COMPANY_QUERY_PROCEDURES.sql
│   │   │   ├── DATA_UPDATE_PROCEDURES/
│   │   │   │   └── DATA_UPDATE_PROCEDURES.sql
│   │   │   └── JOB_PROCEDURES/
│   │   │       └── JOB_PROCEDURES.sql
│   │   │
│   │   ├── TRIGGERS/                # Event-Driven Logic
│   │   │   ├── MAILING_TRIGGERS.sql
│   │   │   └── MAILLING_SERVICE_CONFIG.sql
│   │   │
│   │   ├── JOBS/                    # Scheduled Tasks
│   │   │   ├── JOBS_CREATION_QUERY.sql
│   │   │   └── JOBS_DESTRUCTION_QUERY.sql
│   │   │
│   │   └── QUERIES/                 # Utility Queries
│   │       ├── USER_QUERIES.sql
│   │       ├── COMPANY_QUERIES.sql
│   │       ├── CITIES_QUERIES.sql
│   │       ├── BUILDING_QUERIES.sql
│   │       ├── POWER_QUERIES.sql
│   │       ├── LIFE_SUPPORT_SYSTEM_QUERIES.sql
│   │       └── SCIENTIFIC_PROSPECTION_QUERIES.sql
│   │
│   └── MEDIA/                       # Static assets
│       └── IMAGES/
│
├── PLANNING/                        # Project planning and documentation
│   ├── E-R_DIAGRAMS/               # Entity-Relationship Diagrams
│   │   └── BD - Diagrama ER - MARS_EXPLORATION_DATABASE.vsdx
│   │
│   └── TABLE_PLANNING/             # Table planning documents
│       └── SPACEMISSIONS_PLANNING.xml
│
├── README.md                        # This file
└── LICENSE                          # Apache 2.0 License
```

---

## Installation

### Prerequisites
- **Microsoft SQL Server** 2016 or later;
- **SQL Server Management Studio** (SSMS) or equivalent;
- Windows OS;
- Sufficient disk space for database and operations;
- Mailling service (API credentials should be stored in environment variables).

### Setup Instructions

#### Option 1: Automated Setup (Windows)
```bash
# Navigate to SOURCE directory
cd SOURCE

# Run the batch script to create the database
.\DB_CONSTRUCTION.bat
```

#### Option 2: Manual Setup
1. Open SQL Server Management Studio
2. Execute the following scripts in order:
   ```sql
   -- 1. Create database schema
   SOURCE/SQL/DB_BUILD/DATABASE_BUILD_QUERY.sql
   
   -- 2. Create functions
   SOURCE/SQL/FUNCTIONS/*.sql
   
   -- 3. Create views
   SOURCE/SQL/GENERIC_VIEWS/*.sql
   
   -- 4. Create stored procedures
   SOURCE/SQL/STORED_PROCEDURES/**/*.sql
   
   -- 5. Create triggers
   SOURCE/SQL/TRIGGERS/*.sql
   
   -- 6. Create scheduled jobs
   SOURCE/SQL/JOBS/JOBS_CREATION_QUERY.sql
   
   -- 7. Insert initial data
   SOURCE/SQL/DB_BUILD/DATA_INSERTION.sql
   ```

### Database Cleanup
To completely remove the database:
```bash
# Using batch script
.\DB_DESTRUCTOR.bat

# Or manually execute
SOURCE/DB_DESTRUCTION_QUERY.sql
```

---

## Database Schema

The database implements a comprehensive relational schema with the following primary entities:

### Core Entities
- **Users**: System users with role-based access control
- **Companies**: Multi-company support with hierarchy management
- **Cities**: Urban settlements with zone management
- **Buildings**: Structures for various purposes (residential, industrial, research)
- **Power Plants**: Energy generation and distribution infrastructure
- **Life Support Systems**: Atmospheric and environmental control systems
- **Vehicles & Spacecraft**: Transportation and logistics assets
- **Scientific Data**: Research findings and prospection results

### Key Relationships
- Users → Companies → Cities → Buildings
- Power Plants → City Grid → Buildings
- Life Support Systems → Buildings/Cities
- Vehicles → Logistics → Routes
- Scientific Research → Projects → Results

For detailed schema visualization, see [E-R_DIAGRAMS/BD - Diagrama ER - MARS_EXPLORATION_DATABASE.vsdx](PLANNING/E-R_DIAGRAMS/). You'll need Microsoft Visio to open this ER-Diagram schema file.

---

## Key Components

### 🔧 Functions
Custom SQL functions for:
- Mathematical operations and calculations
- Energy management computations
- User privilege and role management

### 📊 Views
Pre-built views for comprehensive reporting:
- User access and administration views
- Company operational dashboards
- City and building statistics
- Power system status views
- Life support system monitoring
- Vehicle and logistics tracking

### ⚙️ Stored Procedures
Business logic implementation:
- **Data Insertion**: Bulk operations for users, companies, power systems
- **Data Queries**: Complex queries for reports and analysis
- **Data Updates**: Consistent update operations across linked tables
- **Job Procedures**: Scheduled maintenance and reporting tasks

### 🔔 Triggers
Automated event handlers:
- Email notifications on critical events
- Data validation and consistency checks
- Audit logging and monitoring

### 📅 Scheduled Jobs
SQL Server Agent jobs for:
- Periodic maintenance reports
- Power plant status reporting
- System health checks
- Data synchronization tasks

---

## License

This project is licensed under the **Apache License 2.0**. See [LICENSE](LICENSE) file for full details.

---

Developed by [Eduardo Sá](https://github.com/eduard0sa) and [Rafael Silva](https://github.com/rafaelribsilva5).