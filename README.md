# SSIS 
SSIS-based ETL process that migrates data from a CSV file to a production SQL Server table

### ETL Process
  * Extract: created a comma separated value (.csv) file with data from a portable document (.pdf) file 
  * Transform: changed data types on a staging Table, as per the destination Table, and cleaned data (*deleted duplicate vaues, and discarded values that did not meet quality standards*)
  * Load: loaded data from a staging Table into a prod Table

### Setup and Run
  * Install SQL Server Management Studio
  * Install Visual Studio 2022
  * Locate flat file and convert to Comma Separated Value (.csv) format
  * Create Database, schema(s), and table(s)
  * Create, test, and run SSIS packages in Visual Studio 2022
  
### Error Handling
  * Researched error codes and adjusted SQL queries, step by step
  * Ran queries focusing on indivisual tasks (*e.g.: adjusted SQL expressions during transformation*)

### Challenges
  * Hardware limitations prevented me to run the latest version of SSMS
  * Time constrains due to prior commitments 

### Outcomes
  * Created a SSIS package to extract, transform, and load data into a production table
  * Enhanced my knowledge of SQL, Visual Studio 2022, and SQL Server Management Studio

### Execution Report
  * Inserted 29 new records
  * Ignore duplicate rows
  * Transformed values


