-- crreate database
create database DWH_Project ;

use DWH_Project ;

-- create table DimCustomer
Create table DimCustomer(
	CustomerID int not null Primary Key,
	CustomerName varchar(100) not null,
	Age int not null,
	Gender varchar(50) not null,
	City varchar(50) not null,
	NoHp varchar(50) not null
);

 -- create table DimProduct
CREATE TABLE DimProduct (
ProductID int not null PRIMARY KEY,
ProductName varchar(255) not null,
ProductCategory varchar(255) not null,
ProductUnitPrice int null
);

-- crate table DimStatusOrder
CREATE TABLE DimStatusOrder(
StatusID int not null PRIMARY KEY,
StatusOrder varchar(50) not null,
StatusOrderDesc varchar(50) not null
);

-- crate table FactSalesOrder
CREATE TABLE FactSalesOrder(
OrderID int not null PRIMARY KEY,
CustomerID int not null,
ProductID int not null,
Quantity int not null,
Amount int not null,
StatusID int not null,
OrderDate date not null,
CONSTRAINT fk_customer  FOREIGN KEY (CustomerID) REFERENCES DimCustomer (CustomerID),
CONSTRAINT fk_product  FOREIGN KEY (ProductID) REFERENCES DimProduct (ProductID),
CONSTRAINT fk_statusorder  FOREIGN KEY (StatusID) REFERENCES DimStatusOrder (StatusID)
);
