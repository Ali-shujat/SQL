select * from Minions
select * from Towns
select * from People

CREATE TABLE Minions (
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(50) NOT NULL,
	Age INT,
	TownId INT FOREIGN KEY REFERENCES Towns(Id),
)
CREATE TABLE Towns (
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(50) NOT NULL
)
INSERT INTO Towns (Name) VALUES
( 'Sofia'),
( 'Peter'),
('Victoria')

INSERT INTO Minions (Name, Age,TownId) VALUES
('Kevin',22, 8),
('Bob',22, 9),
('Steward',NULL,10)

CREATE TABLE People (
	Id INT PRIMARY KEY IDENTITY(1,1),
	[Name] NCHAR(200) NOT NULL,
	Picture  varbinary(max),
	[Height] decimal (4,2),
	[Weight] decimal (5,2),
	Gender VARCHAR(10) CHECK (Gender IN ('m','f')),
	Birthdate DATE NOT NULL,
	Biography NVARCHAR,
)
INSERT INTO [dbo].[People]
           ([Name]
           ,[Picture]
           ,[Height]
           ,[Weight]
           ,[Gender]
           ,[Birthdate]
           ,[Biography])
     VALUES
           ('JULIA'
           ,NULL
           ,6.1
		   ,80.4
           ,'f'
           ,'2009-jun-23'
           ,null)
GO
