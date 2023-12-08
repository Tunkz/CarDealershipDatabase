DROP DATABASE CarDealershipDatabase;
CREATE DATABASE CarDealershipDatabase;

USE CarDealershipDatabase;

Create table Dealerships (dealership_id int  NOT NULL auto_increment PRIMARY KEY,
Name varchar(50), 
address varchar(50), 
phone varchar(12));

CREATE TABLE vehicles 
(VIN varchar(50) PRIMARY KEY,
Make varchar(15),
Model varchar (15),
Color varchar(15),
`Year` int(15), 
SOLD BOOLEAN);
 
CREATE TABLE inventory (dealership_id int,
VIN varchar(50),
FOREIGN KEY(dealership_id) REFERENCES Dealerships(dealership_id),
FOREIGN KEY(VIN) REFERENCES vehicles(VIN));

CREATE TABLE sales_contracts(
contract_id int (20) auto_increment PRIMARY KEY,
Date varchar (25), 
customerName varchar(40), 
customerEmail varchar(70),
vehicleVIN  varchar(50), 
FOREIGN KEY (vehicleVIN) REFERENCES vehicles(VIN));

INSERT INTO Dealerships (Name, address, phone)
VALUES ("Harry","123_Pelham_Bay",1234567890),
("Hamza","3321_YearUp",7184576112);

INSERT INTO Vehicles (VIN,Make,Model, Color, Year, SOLD)
VALUES("17s3f3s90a04","TOYOTA","Camry","red",2024,TRUE),
("43as34f414g3f7a62","FORD","FUSION","blue",2015,false);

INSERT INTO inventory (dealership_id,VIN)
VALUES(1,"17s3f3s90a04"),
(2,"43as34f414g3f7a62");

INSERT INTO sales_contracts (Date,customerName,customerEmail, vehicleVIN)
VALUES ("10-10-2000","Conan","ConanExiles@gmail.com","17s3f3s90a04"),
("12-12-2020","Michael","Michael@Gmail.com","43as34f414g3f7a62"); 
