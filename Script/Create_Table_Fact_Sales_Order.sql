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
) ;