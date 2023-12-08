DROP DATABASE CarDealershipDatabase;
CREATE DATABASE CarDealershipDatabase;

USE CarDealershipDatabase;

Create table Dealerships (dealership_id int  NOT NULL auto_increment PRIMARY KEY,
Name varchar(50), 
address varchar(50), 
phone varchar(12));

CREATE TABLE vehicles 
(VIN int PRIMARY KEY,
Make varchar(15),
Model varchar (15),
Color varchar(15),
`Year` int(15), 
SOLD BOOLEAN);
 
CREATE TABLE inventory (dealership_id int,
VIN int,
FOREIGN KEY(dealership_id) REFERENCES Dealerships(dealership_id),
FOREIGN KEY(VIN) REFERENCES vehicles(VIN));

CREATE TABLE sales_contracts(Date varchar (25), 
customerName varchar(40), 
customerEmail varchar(70),
contract_id int (20) auto_increment PRIMARY KEY, 
vehicleVIN int (50), 
FOREIGN KEY (vehicleVIN) REFERENCES vehicles(VIN));

INSERT INTO Dealerships (Name, address, phone)
VALUES ("Harry","123_Pelham_Bay",1234567890),
("Hamza","3321_YearUp",7184576112);

INSERT INTO Vehicles (VIN,Make,Model, Color, Year, SOLD)
VALUES(17339004,"TOYOTA","Camry","red",2024,TRUE),
(43344143762,"FORD","FUSION","blue",2015,false);

INSERT INTO inventory (dealership_id,VIN)
VALUES(1,17339004),
(2,43344143762);

INSERT INTO sales_contracts (Date,customerName,customerEmail,contract_id,; 
