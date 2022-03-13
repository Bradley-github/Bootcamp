Create Database [SQL Homework 3]

DROP TABLE IF EXISTS [GuestsStatus];
DROP TABLE IF EXISTS [Guests];
DROP TABLE IF EXISTS [Levels];
DROP TABLE IF EXISTS [Classes];
DROP TABLE IF EXISTS [Users];
DROP TABLE IF EXISTS [Taverns];
DROP TABLE IF EXISTS [Location];
DROP TABLE IF EXISTS [Roles];
DROP TABLE IF EXISTS [SupplySales];
DROP TABLE IF EXISTS [Services];
DROP TABLE IF EXISTS [Supplies];
DROP TABLE IF EXISTS [Received];
DROP TABLE IF EXISTS [Counts];
DROP TABLE IF EXISTS [RoomStatuses];
DROP TABLE IF EXISTS [Services_Status];
DROP TABLE IF EXISTS [Rooms];
DROP TABLE IF EXISTS [Stays];

CREATE TABLE [Stays] (
	Id int IDENTITY,
	Rate decimal(18,2),
	SaleId int,
	GuestId int,
	RoomId int,
	Date date,
	CONSTRAINT [PK_Stays] PRIMARY KEY ([Id]),
);

CREATE TABLE [Rooms] (
	Id int IDENTITY PRIMARY KEY,
	Name varchar(50),
	TavernId int,
	StatusId int

);

CREATE TABLE [ServicesStatus] (
	Id tinyint IDENTITY,
	Name varchar(50),
	CONSTRAINT [PK_ServicesStatus] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_ServicesStatus_Name] FOREIGN KEY (Name) REFERENCES [dbo].[Guests] ([Name]),

);

CREATE TABLE [RoomStatuses] (
	Id tinyint IDENTITY PRIMARY KEY,
	Name varchar(50)

);

CREATE TABLE [Counts] (
	SupplyId int,
	Date date,
	TavernId int,
	Count decimal(18,2)
	primary key (SupplyId, Date, TavernId)

);

CREATE TABLE [Received] (
	Id INT PRIMARY KEY,
	SupplyId int,
	Date datetime,
	Amount decimal(18,2),
	Cost decimal(18,2),
	TavernId int,

);

CREATE TABLE [Supplies] (
	SuppliesId INT IDENTITY PRIMARY KEY,
	Name varchar(250),
	Unit varchar(250),

);

CREATE TABLE [Services] (
	ServiceId INT IDENTITY PRIMARY KEY,
	StatusId INT,
	TavernId INT,
	ServiceName varchar(250),
	
);

CREATE TABLE [SupplySales] (
	Id int IDENTITY PRIMARY KEY,
	ServiceId int,
	GuestId int,
	Price decimal(18,2),
	Date datetime,
	Amount int,
	TavernId int,
);

CREATE TABLE [Roles] (
	Id tinyint PRIMARY KEY,
	Name varchar(50),
	Description varchar(max),
);

CREATE TABLE [Location] (
	Id int IDENTITY PRIMARY KEY,
	Name varchar(100),
);

CREATE TABLE [Taverns] (
	Id int IDENTITY PRIMARY KEY,
	Name varchar(250),
	LocationId int,
	OwnerId int,
);

CREATE TABLE [Users] (
	Id int IDENTITY PRIMARY KEY,
	Name varchar(250),
	RoleId int,
);

CREATE TABLE [Classes] (
	Id smallint IDENTITY PRIMARY KEY,
	Name varchar(50),
);

CREATE TABLE [Levels] (
	Id int IDENTITY PRIMARY KEY,
	GuestId Int,
	ClassId Int,
	Level Int,
);

CREATE TABLE [Guests] (
	Id INT IDENTITY PRIMARY KEY,
	Name varchar(250), 
	Notes varchar(250),
	Birthdate date,
	CakeDay date,
	StatusId int
);

CREATE TABLE [GuestStatus] (
	Id INT PRIMARY KEY,
	Name varchar(250)
);

	INSERT INTO Guests(Name,Notes,Birthdate,Cakeday,StatusId)
	VALUES ('Mage', 'Leve l3' ,'2000-01-01', '2000-01-02, 1),
	('Warrior', 'Level 100', '2000-02-02', '2000-03-03', 2),
	('DeathKnight','Level 19','2000-01-01', '2000-01-02', 3),
	('Warlock', 'Lev', '2000-01-01', '2000-01-02', 4),
	('Rogue', 'BlackCloak', '2000-01-01', '2000-01-02', 5)
);

	INSERT INTO GuestStatus(Name)
	VALUES ('Mage'),
	('Warrior'),
	('DeathKnight'),
	('Warlock'),
	('Rogue')
;
	INSERT INTO Levels(GuestId,ClassId,Level)
	VALUES (1, 1, 19),
	(1, 1, 4),
	(3, 3, 3),
	(4, 4, 15),
	(5, 5, 20)
;
	INSERT INTO Classes(Name)
	VALUES ('Mage'),
	('Warrior'),
	('Rogue'),
	('Warlock'),
	('DeathKnight')
;

	INSERT INTO Users(Name,RoleId)
	VALUES ('Mage', 1),
	('Warrior', 2),
	('Rogue', 3),
	('Warlock', 4),
	('DeathKnight', 5)
;
	INSERT INTO Taverns(Name,LocationId,OwnerId)
	VALUES ('RockyRoad', 1, 1),
	('WhiteWolf', 2, 2),
	('ShadyMaple', 3, 3),
	('ExeterFamily', 4, 4)
;
	INSERT INTO Location(Name)
	VALUES ('DownUnder'),
	('Up Top'),
	('Far East'),
	('Way West')
;
	INSERT INTO Location(Name)
	VALUES ('DownUnder'),
	('Up Top'),
	('Far East'),
	('Way West')
;