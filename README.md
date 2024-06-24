# Telecom Company Data Warehousing Task

## Overview

A telecommunications company requires the implementation of a data warehousing task using SSIS. Below are the detailed requirements and processes involved.

## Task Details

### 1. CSV File Handling
- The company’s system periodically saves a CSV file every 5 minutes.
- This file includes basic data of various transactions performed by customers during a specified time period.

### 2. Data Table Provided
- The company has provided a table detailing the data stored in the CSV file.

![image](https://github.com/Kirolos107/TelecomETL_SSIS/assets/73123775/07b0523a-c3a3-4e22-8ac0-30d845bb777e)


### 3. Required Data Processing
- Specific processing must be completed on this data before storing it in the database.

![image](https://github.com/Kirolos107/TelecomETL_SSIS/assets/73123775/b4fe3384-c190-4110-bb32-21096241b027)

### 4. Rejected Records Handling
- Rejected records will be stored in a separate table, along with the name of the original CSV file.

### 5. Data Quality Assurance
- During the process of recording data in the database, additional data needs to be recorded to ensure the quality of the data storage process:
  - The number of transactions in the CSV file.
  - The number of transactions stored in the database.
  - The number of transactions rejected for not meeting the required conditions.
  - Linking the data stored in the database with the original CSV file.

### 6. File Management
- After completing the process of storing data in the database according to the above conditions, move the CSV file to another folder.

## Implementation
- Design and implement this ETL process using SSIS to ensure efficient and accurate data handling.

## Conclusion
This readme provides an overview of the data warehousing task for a telecommunications company, detailing the necessary steps and requirements for processing and storing transaction data efficiently.
