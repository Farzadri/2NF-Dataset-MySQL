# 2NF-Dataset-MySQL
Transforming Used Cars Details Dataset into 2NF

**Description**:

This aims to normalize Used Cars Details Dataset to the second normal form (2NF) at MySQL in order to organize the data for storing in a data warehouse.  

**The steps to convert dataset to 2NF are as follows:**

1-Ingest the data into the MySQL database: Dataset imported thorugh data import wizard option
2-Three tabels created as:
  Table 1: Car_details: This table includes general information about each car.
  Table 2: Car_specifications: This table includes detailed specifications of each car.
  Table 3: Car_price: This table includes pricing information for each car.

3-Identified the primary key and foreign key for each table, maintaining relationship between tables as follows:

-Table 1:
Primary Key: (Car_Name, Make, Model, Make_Year) is a composite key as a unique identifier. 
Foreign Keys: None

-Table 2:
Foreign Key: (Car_Name, Make, Model, Make_Year) references (Car_Name, Make, Model, Make_Year) in the Car_details table. 
This makes a relationship between the Car_specifications table and Car_details table

-Table 3:
Foreign Key: (Car_Name, Make, Model, Make_Year) references (Car_Name, Make, Model, Make_Year) in the Car_details table. 
This makes a relationship between the Car_price table and the Car_details table






