CREATE TABLE [dbo].[Registration]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [UserName] VARCHAR(10) NULL, 
    [FirstName] VARCHAR(20) NULL, 
    [LastName] VARCHAR(20) NULL, 
    [Celllphone] VARCHAR(15) NULL, 
    [Email] VARCHAR(20) NULL, 
    [Password] VARCHAR(10) NULL, 
    [Address] VARCHAR(50) NULL, 
    [City] VARCHAR(20) NULL, 
    [Country] VARCHAR(20) NULL, 
    [Photo] IMAGE NULL
)
