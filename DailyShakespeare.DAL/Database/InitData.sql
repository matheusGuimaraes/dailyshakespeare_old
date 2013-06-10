USE [DailyShakespeare]
GO

delete dbo.[User]
delete dbo.UserType
delete dbo.Play
delete dbo.EmotionalState
delete dbo.Gender

-------------------------------------------- USER TYPES------------------------------------------
INSERT INTO [dbo].[UserType]
           ([Description])
     VALUES
           ('Administrator')
GO

-------------------------------------------- USERS------------------------------------------
INSERT INTO [dbo].[User]
           ([FirstName]
           ,[LastName]
           ,[Username]
           ,[UserType_Id])
     VALUES
           ('System'
           ,'System'
           ,'admin'
           ,1)
GO


-------------------------------------------- EMOTIONAL STATES------------------------------------------

INSERT INTO [dbo].[EmotionalState]
           ([Description])
     VALUES
           ('Dramatic')
GO

INSERT INTO [dbo].[EmotionalState]
           ([Description])
     VALUES
           ('Comic')
GO

INSERT INTO [dbo].[EmotionalState]
           ([Description])
     VALUES
           ('Romantic')
GO

-------------------------------------------- GENDERS------------------------------------------

INSERT INTO [dbo].[Gender]
           ([Description])
     VALUES
           ('Male')
GO

INSERT INTO [dbo].[Gender]
           ([Description])
     VALUES
           ('Female')
GO

INSERT INTO [dbo].[Gender]
           ([Description])
     VALUES
           ('Undefined')
GO


-------------------------------------------- PLAYS------------------------------------------

delete dbo.Play

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Henry VI - Part I',1590,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Henry VI - Part II',1590,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Henry VI - Part III',1590,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Richard III',1592,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Comedy of Errors',1592,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Titus Andronicus',1593,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Taming of the Shrew',1593,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Two Gentlemen of Verona',1594,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Love'' Labour''s Lost',1594,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Romeo and Juliet',1594,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Richard II',1595,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('A Midsummer Night''s Dream',1595,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('King John',1596,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('The Merchant of Venice',1596,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Henry IV - Part I',1597,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Hnery IV - Part II',1597,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Much Ado About Nothing',1598,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Henry V',1598,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Julius Caesar',1599,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('As You Like It',1599,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Twelfth Night',1599,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Hamlet',1600,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('The Merry Wives of Windsor',1600,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Trolius and Cressida',1601,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('All''s Well That Ends Well',1602,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Measure for Measure',1604,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Othello',1604,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('King Lear',1605,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Macbeth',1605,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Hamlet',1600,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Antony and Cleopatra',1606,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Coriolanus',1607,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Timon of Athens',1607,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Pericles',1608,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Cymbeline',1609,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('The Winter''s Tale',1610,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('The Tempest',161,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('Henry VIII',1612,getDate(),1)
GO

INSERT INTO [dbo].[Play]
           ([Name]
           ,[Year]
		   ,[LastUpdatedOn]
		   ,[LastUpdatedBy_Id])
     VALUES
           ('The Two Noble Kinsmen',1612,getDate(),1)
GO

-------------------------------------------- UPDATE TYPES------------------------------------------

INSERT INTO [dbo].[UpdateType]
           ([Description])
     VALUES
           ('Character')
GO

INSERT INTO [dbo].[UpdateType]
           ([Description])
     VALUES
           ('Play')
GO
-------------------------------------------- UPDATE ACTIONS------------------------------------------

INSERT INTO [dbo].[UpdateAction]
           ([Description])
     VALUES
           ('Added')
GO


INSERT INTO [dbo].[UpdateAction]
           ([Description])
     VALUES
           ('Updated')
GO


INSERT INTO [dbo].[UpdateAction]
           ([Description])
     VALUES
           ('Deleted')
GO