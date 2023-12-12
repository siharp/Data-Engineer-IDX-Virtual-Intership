ALTER TABLE FactSalesOrder
ADD CONSTRAINT fk_customer FOREIGN KEY (CustomerID) REFERENCES DimCustomer (CustomerID),
CONSTRAINT fk_product FOREIGN KEY (ProductID) REFERENCES DimProduct (ProductID),
CONSTRAINT fk_statusorder FOREIGN KEY (StatusID) REFERENCES DimStatusOrder (StatusID);
