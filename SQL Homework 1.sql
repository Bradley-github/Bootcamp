DROP TABLE IF EXISTS [Customer];

CREATE TABLE [Customer] (
	ID INT IDENTITY(1, 1),
	customer_name varchar(250),
);
	INSERT INTO Customer(customer_name)
	VALUES ('Bradley''James''Jessica''Aaron''Maggie')
;
DROP TABLE IF EXISTS [OrderHeader];

CREATE TABLE [OrderHeader] (
	OrderID INT IDENTITY(1, 1),
	CustomerID INT,
	OrderTotal decimal(10,2),
	Order_date DATETIME,
);
	INSERT INTO OrderHeader(CustomerID,OrderTotal,Order_date)
	VALUES (1, '10', 20220224),
	(2, '3', 20220301),
	(3, '6', 20220401),
	(4, '4', 20221111),
	(5, '2', 20221225)
;
DROP TABLE IF EXISTS [OrderDetail];

CREATE TABLE [OrderDetail] (
	LineID INT IDENTITY(1,1),
	OrderID INT,
	ServiceID INT
);
	INSERT INTO OrderDetail(LineID,OrderID,ServiceID)
	VALUES (1, 12, 24),
	(2, 44, 90),
	(3, 13, 26),
	(4, 9, 18),
	(5, 100, 200)
;

DROP TABLE IF EXISTS [Services];

CREATE TABLE [Services] (
	ServiceID INT IDENTITY(1,1),
	StatusID INT,
	ServiceName varchar(250),
	Price decimal(18,4),
);
	INSERT INTO Services(StatusID,ServiceName,Price)
	VALUES (1, 'Weapon', 5.00),
	(2, 'Weapon', 5),
	(3, 'Weapon', 5),
	(4, 'Weapon', 5),
	(5, 'Weapon', 5),
);

DROP TABLE IF EXISTS [Services_Status];

CREATE TABLE [Services_Status] (
	StatusID INT IDENTITY(1,1),
	Service_Name varchar(250), 
);
	INSERT INTO Services_Status(StatusID,Service_Name)
	VALUES ('Weapon', 'Weapon','Weapon','Weapon','Weapon')
;
DROP TABLE IF EXISTS [Supplies];

CREATE TABLE [Supplies] (
	SupplyID INT IDENTITY(1, 1),
	customer_name varchar(250),
);

	INSERT INTO Supplies(customer_name)
	VALUES ('Bradley''James''Jessica''Aaron''Maggie'),
);
DROP TABLE IF EXISTS [Received_Items];

CREATE TABLE [Received_Items] (
	ReceivableID INT IDENTITY,
	SupplyID INT,
	TavernID INT,
	Cost decimal,
	Quantity decimal,
	Datereceived date,
);

	INSERT INTO Received_Items(SupplyID,TavernID,Cost,Quantity,Datereceived)
	VALUES (1, 1, 5, 1, 20222402),
	(2, 2, 5, 1, 20222402),
	(3, 3, 5, 1, 20222402),
	(4, 4, 5, 1, 20222402),
	(5, 5, 5, 1, 20222402),
;
DROP TABLE IF EXISTS [Inventory];

CREATE TABLE [Inventory] (
	TavernID INT IDENTITY(1, 1),
	SupplyID INT,
	Quantity decimal,
	Datereceived date,
);

	INSERT INTO Received_Items(TavernID,SupplyID,Quantity,Datereceived)
	VALUES (1, 1, 10, 20222402),
	(2, 2, 21, 20222402),
	(3, 3, 15, 20222402),
	(4, 4, 1, 20222402),
	(5, 5, 6, 20222402),
;
DROP TABLE IF EXISTS [Tavern];

CREATE TABLE [Tavern] (
	TavernID INT IDENTITY(1, 1),
	TavernName varchar(250) 
);
	INSERT INTO Tavern(TavernName)
	VALUES ('MilesTap''TheLocal''DiagonAlley''ThreeCastles''LostShepard')
;
