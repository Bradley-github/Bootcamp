DROP TABLE IF EXISTS [Guests];

CREATE TABLE [Guests] (
	Id INT IDENTITY PRIMARY KEY,
	Name varchar(250), 
	Notes varchar(250),
	Birthdate date,
	CakeDay date,
	StatusId int
);


	INSERT INTO Guests(Name,Notes,Birthdate,Cakeday,StatusId)
	VALUES ('Mage', 'Level3' ,20000101, 20000102, 1),
	('Warrior', 'Level100', 20000202, 20000303, 2),
	('DeathKnight','Level19',20000101, 20000102, 3),
	('Warlock', 'Level1', 20000101, 20000102, 4),
	('Rogue', 'Level22', 20000101, 20000102, 5),
;

DROP TABLE IF EXISTS [Status];

CREATE TABLE [Status] (
	Id tinyint PRIMARY KEY,
);

DROP TABLE IF EXISTS [Levels];

CREATE TABLE [Levels] (
	Id int IDENTITY PRIMARY KEY,
	GuestId Int,
	ClassId Int,
	Date date,
);

	INSERT INTO Levels(GuestId,ClassId,Date)
	VALUES (1, 1, 20222802),
	(1, 1, 20222802),
	(3, 3, 20222802),
	(4, 4, 20222802),
;

DROP TABLE IF EXISTS [Classes];

CREATE TABLE [Classes] (
	Id smallint IDENTITY PRIMARY KEY,
	Name varchar(50),
);

DROP TABLE IF EXISTS [Users];

CREATE TABLE [Users] (
	Id int IDENTITY PRIMARY KEY,
	Name varchar(250),
	RoleId int,
);

DROP TABLE IF EXISTS [Taverns];

CREATE TABLE [Taverns] (
	Id int IDENTITY PRIMARY KEY,
	Name varchar(250),
	LocationId int,
	OwnerId int,
);

DROP TABLE IF EXISTS [Location];

CREATE TABLE [Location] (
	Id int IDENTITY PRIMARY KEY,
	Name varchar(100),
);

DROP TABLE IF EXISTS [Roles];

CREATE TABLE [Roles] (
	Id tinyint PRIMARY KEY,
	Name varchar(50),
	Description varchar(max),
);

DROP TABLE IF EXISTS [SupplySales];

CREATE TABLE [SupplySales] (
	SaleId INT IDENTITY PRIMARY KEY,
	customer_name varchar(250),
	ServiceName varchar(250),
	Price decimal,
);

DROP TABLE IF EXISTS [Services];

CREATE TABLE [Services] (
	ServiceId INT IDENTITY PRIMARY KEY,
	StatusId INT,
	TavernId INT,
	ServiceName varchar(250),
	
);

ALTER TABLE dbo.Guests
ADD CONSTRAINT FK_Status
FOREIGN KEY (StatusId) REFERENCES dbo.Status(StatusId);

ALTER TABLE dbo.Location
ADD CONSTRAINT FK_LocationId
FOREIGN KEY (LocationId) REFERENCES Location(LocationId);

ALTER TABLE dbo.Guests
ADD CONSTRAINT FK_GuestId
FOREIGN KEY (GuestId) REFERENCES Levels(GuestId);
