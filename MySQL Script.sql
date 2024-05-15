

CREATE DATABASE final_spinny_v2;
USE final_spinny_v2;

CREATE TABLE Car_details(
  Car_Name VARCHAR(255),
  Make VARCHAR(255),
  Model VARCHAR(255),
  Make_Year INT,
  Color VARCHAR(255),
  Body_Type VARCHAR(255),
  Mileage_Run INT,
  No_of_Owners VARCHAR(50),
  Seating_Capacity INT,
  PRIMARY KEY (Car_Name, Make, Model, Make_Year)
);

CREATE TABLE Car_specifications (
  Car_Name VARCHAR(255),
  Make VARCHAR(255),
  Model VARCHAR(255),
  Make_Year INT,
  Fuel_Type VARCHAR(255),
  Fuel_Tank_Capacity_L INTEGER,
  Engine_Type VARCHAR(255),
  CC_Displacement INT,
  Transmission VARCHAR(255),
  Transmission_Type VARCHAR(255),
  Power_BHP DOUBLE,
  Torque_Nm DOUBLE,
  Mileage_kmpl DOUBLE,
  Emission VARCHAR(255),
  FOREIGN KEY (Car_Name, Make, Model, Make_Year) REFERENCES Car_details(Car_Name, Make, Model, Make_Year)
);

CREATE TABLE Car_price(
  Car_Name VARCHAR(255),
  Make VARCHAR(255),
  Model VARCHAR(255),
  Make_Year INT,
  Price INT,
  FOREIGN KEY (Car_Name, Make, Model, Make_Year) REFERENCES Car_details(Car_Name, Make, Model, Make_Year)
);


SELECT * FROM Car_details;
SELECT * FROM Car_specifications;
SELECT * FROM Car_price;

