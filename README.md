# Simple-DataPipeline
An end to end solution using sample data to create an environment for analytical reporting. (Scenario is hypothetical to showcase solution oriented capabilities)
# Description 
Business users currently use Microsoft Excel for data storage and reporting. Requirement is to develop a more stable and secure environment for analytical reporting. 
Data Pipeline was created to meet requirement by creating a database instance in Postgres, modeling a data structure, performing ELT on csv file to database for consumption. 
# Steps 
Create logical data model
Create physical data model
Import csv into Pandas dataframe
Create database engine connection
Load staging table in Postgres with dataframe
Perform Transformations and loading using SQL
