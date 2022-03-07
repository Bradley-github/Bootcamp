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
	VALUES ('Mage', 'Leve l3' ,20000101, 20000102, 1),
	('Warrior', 'Level 100', 20000202, 20000303, 2),
	('DeathKnight','Level 19',20000101, 20000102, 3),
	('Warlock', 'Lev', 20000101, 20000102, 4),
	('Rogue', 'BlackCloak', 20000101, 20000102, 5)
;

DROP TABLE IF EXISTS [GuestStatus];

CREATE TABLE [GuestStatus] (
	Id tinyint PRIMARY KEY,
	Name varchar(250)
);

	INSERT INTO GuestStatus(Name)
	VALUES ('Mage'),
	('Warrior'),
	('DeathKnight'),
	('Warlock'),
	('Rogue')
;

DROP TABLE IF EXISTS [Levels];

CREATE TABLE [Levels] (
	Id int IDENTITY PRIMARY KEY,
	GuestId Int,
	ClassId Int,
	Level Int,
);

	INSERT INTO Levels(GuestId,ClassId,Level)
	VALUES (1, 1, 19),
	(1, 1, 4),
	(3, 3, 3),
	(4, 4, 15),
	(5, 5, 20)
;

DROP TABLE IF EXISTS [Classes];

CREATE TABLE [Classes] (
	Id smallint IDENTITY PRIMARY KEY,
	Name varchar(50),
);

	INSERT INTO Classes(Name)
	VALUES ('Mage'),
	('Warrior'),
	('Rogue'),
	('Warlock'),
	('DeathKnight')
;

DROP TABLE IF EXISTS [Users];

CREATE TABLE [Users] (
	Id int IDENTITY PRIMARY KEY,
	Name varchar(250),
	RoleId int,
);

	INSERT INTO Users(Name,RoleId)
	VALUES ('Mage', 1),
	('Warrior', 2),
	('Rogue', 3),
	('Warlock', 4),
	('DeathKnight', 5)
;

DROP TABLE IF EXISTS [Taverns];

CREATE TABLE [Taverns] (
	Id int IDENTITY PRIMARY KEY,
	Name varchar(250),
	LocationId int,
	OwnerId int,
);

	INSERT INTO Taverns(Name,LocationId,OwnerId)
	VALUES ('RockyRoad', 1, 1),
	('WhiteWolf', 2, 2),
	('ShadyMaple', 3, 3),
	('ExeterFamily', 4, 4)
;

DROP TABLE IF EXISTS [Location];

CREATE TABLE [Location] (
	Id int IDENTITY PRIMARY KEY,
	Name varchar(100),
);

	INSERT INTO Location(Name)
	VALUES ('DownUnder'),
	('Up Top'),
	('Far East'),
	('Way West')
;

DROP TABLE IF EXISTS [Roles];

CREATE TABLE [Roles] (
	Id tinyint PRIMARY KEY,
	Name varchar(50),
	Description varchar(max),
);

	INSERT INTO Location(Name)
	VALUES ('DownUnder'),
	('Up Top'),
	('Far East'),
	('Way West')
;

DROP TABLE IF EXISTS [SupplySales];

CREATE TABLE [SupplySales] (
	Id int IDENTITY PRIMARY KEY,
	ServiceId int,
	GuestId int,
	Price decimal(18,2),
	Date datetime,
	Amount int,
	TavernId int,
);

DROP TABLE IF EXISTS [Services];

CREATE TABLE [Services] (
	ServiceId INT IDENTITY PRIMARY KEY,
	StatusId INT,
	TavernId INT,
	ServiceName varchar(250),
	
);

DROP TABLE IF EXISTS [Supplies];

CREATE TABLE [Supplies] (
	SuppliesId INT IDENTITY PRIMARY KEY,
	Name varchar(250),
	Unit varchar(250),

);

DROP TABLE IF EXISTS [Received];

CREATE TABLE [Received] (
	Id INT PRIMARY KEY,
	SupplyId int,
	Date datetime,
	Amount decimal(18,2),
	Cost decimal(18,2),
	TavernId int,

);

DROP TABLE IF EXISTS [Counts];

CREATE TABLE [Counts] (
	SupplyId int,
	Date date,
	TavernId int,
	Count decimal(18,2)
	primary key (SupplyId, Date, TavernId)

);

DROP TABLE IF EXISTS [RoomStatuses];

CREATE TABLE [RoomStatuses] (
	Id tinyint IDENTITY PRIMARY KEY,
	Name varchar(50)

);

DROP TABLE IF EXISTS [ServicesStatus];

CREATE TABLE [ServicesStatus] (
	Id tinyint IDENTITY PRIMARY KEY,
	Name varchar(50)

);

DROP TABLE IF EXISTS [Rooms];

CREATE TABLE [Rooms] (
	Id int IDENTITY PRIMARY KEY,
	Name varchar(50),
	TavernId int,
	StatusId int

);

DROP TABLE IF EXISTS [Stays];

CREATE TABLE [Stays] (
	Id int IDENTITY PRIMARY KEY,
	Rate decimal(18,2),
	SaleId int,
	GuestId int,
	RoomId int,
	Date date,

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


SELECT* FROM Guests

SELECT NULLIF(Birthdate, 2000) as nullish FROM Guests

SELECT* FROM Stays

SELECT NULLIF(Rate, 100) as nullish FROM Stays

SELECT DISTINCT Name
FROM Guests


Select * FROM Guests order by Name desc
/* [Group By] [Order By] */


SELECT* FROM Stays

SELECT NULLIF(Rate, 100) as nullish FROM Stays

SELECT 
    Id
FROM
    dba_tables;

SELECT* FROM Levels

SELECT NULLIF(Levels, Id, levels,)

RETURN ['Label Grouping']