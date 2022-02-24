CREATE TABLE [Customer] (
	ID INT IDENTITY(1, 1),
	customer_name varchar(250) 
);

CREATE TABLE [OrderHeader] (
	OrderID INT IDENTITY(1, 1),
	CustomerID INT IDENTITY(1, 1),
	OrderTotal decimal(10,2),
	Order_date DATETIME,
);

CREATE TABLE [OrderDetail] (
	LineID INT IDENTITY(1,1),
	OrderID INT IDENTITY(1,1),
	ServiceID INT IDENTITY(1,1)
);

CREATE TABLE [Services] (
	ServiceID INT IDENTITY(1,1),
	StatusID INT IDENTITY(1,1),
	ServiceName varchar(250),
	Price decimal,
);

CREATE TABLE [Services_Status] (
	StatusID INT IDENTITY(1,1),
	Service_Name varchar(250), 
);

CREATE TABLE [Supplies] (
	SupplyID INT IDENTITY(1, 1),
	customer_name varchar(250),
);

CREATE TABLE [Received_Items] (
	ReceivableID INT IDENTITY(1, 1),
	SupplyID INT IDENTITY(1, 1),
	TavernID INT IDENTITY(1, 1),
	Cost decimal,
	Quantity decimal,
	Datereceived DATETIME,
);

CREATE TABLE [Inventory] (
	TavernID INT IDENTITY(1, 1),
	SupplyID varchar(250), 
	Quantity decimal,
	Datereceived DATETIME,
);

CREATE TABLE [Tavern] (
	TavernID INT IDENTITY(1, 1),
	TavernName varchar(250) 
);
