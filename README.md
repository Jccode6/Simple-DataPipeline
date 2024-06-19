# Simple-DataPipeline
An end to end solution using sample data to create an environment for analytical reporting. (Scenario is hypothetical to showcase solution oriented capabilities)
# Description 
Business users currently use Microsoft Excel for data storage and reporting. Requirement is to develop a more stable and secure environment for analytical reporting. 
Data Pipeline was created to meet requirement by creating a database instance in Postgres, modeling a data structure, performing ELT on csv file to database for consumption. 
# Steps 
1. Create logical data model
2. Create physical data model
3. Import csv into Pandas dataframe
4. Create database engine connection
5. Load staging table in Postgres with dataframe
6. Perform Transformations and load into target tables using SQL
