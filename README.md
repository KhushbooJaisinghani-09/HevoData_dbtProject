# HevoData_dbtProject
DBT Project Repo

Overview
This project sets up a data pipeline from PostgreSQL to Snowflake using Hevo, and models data using dbt.

Instructions
1: Install Docker for Desktop -> create a network and then pull and run postgres, dpage/pgadmin4, ngrok/ngrok.(Docker Commands Attached with Answers Sheet)< br / > 
2: Create tables and Load data into Postgres, using pgadmin's graphical interface.< br / > 
  < br / > a Create tables raw_orders, raw_customers, and raw_payments. (Queries Attached with Answer Sheet)< br / > 
  < br / > b Import CSV data into these tables via pgAdmin's 'Import/Export' Data feature.< br / > 
3: Sign up for Hevo, Snowflake and DBT. Create a Warehouse, Database and Schema for the Snowflake (to be used as destination for the next step)< br / > 
4: Use your Hevo Account to setup an pipeline with PostgreSql as source and Snowflake as destination. I have used ngrok tunnel to expose my local database to a remove server.   < br / > 
5: Run the Hevo pipeline to load data and verify in Snowflake.< br / > 
6: Model Data with dbt: Login to https://www.getdbt.com/ and add snowflake details (the ones used to create a Hevo PipeLine) and run the connection.< br / > 
7: As the next steps create a GitRepo 'HevoData_dbtProject' and link to the DBT Project.< br / > 
8: Create the raw_orders, raw_customers, and raw_payments model to have a better view of models. Create customers.sql model to transform data. (Models Attached with Answer Sheets)< br / > 
9: Create customers.yml file inside tests folder within your dbt project, to check for not_null and unique values.< br / > 
10: Use :dbt run and :dbt test commands to run and test the project< br / > 
11: Create a Pull Request and Merge to the Repo.< br / > 
12: The resultant customers CSV is also attached with answer sheet.< br / > 

