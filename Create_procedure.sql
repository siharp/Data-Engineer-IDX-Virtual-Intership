
-- create store procedure
CREATE PROCEDURE summary_status_order(
	@StatusId INT
)
AS
BEGIN
	SELECT
		fso.OrderId,
		dso.StatusId,
		c.CustomerName,
		p.ProductName,
		fso.Quantity,
		dso.StatusOrder
	FROM FactSalesOrder AS fso
	join DimCustomer AS c ON fso.CustomerId = c.CustomerId
	join DimProduct AS p ON fso.ProductId = p.ProductId
	join DimStatusOrder AS dso ON fso.StatusId = dso.StatusId
	WHERE dso.StatusId = @StatusId;
END;

-- to run store procedure
EXEC summary_status_order @StatusID = 1;