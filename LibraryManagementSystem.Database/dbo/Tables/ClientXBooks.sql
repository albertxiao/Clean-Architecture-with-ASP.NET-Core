﻿CREATE TABLE [dbo].[ClientXBooks]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	ClientId INT NOT NULL,
	BookId INT NOT NULL,
	CreatedById INT NOT NULL,
	CreatedDate DATETIME NOT NULL,
	ExpirationDate DATETIME NOT NULL,
	CONSTRAINT FK_ClientXBooks_Client FOREIGN KEY (ClientId) REFERENCES dbo.Clients (Id),
	CONSTRAINT FK_ClientXBooks_Books FOREIGN KEY (BookId) REFERENCES dbo.Books (Id)
)
