
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 06/10/2013 18:12:30
-- Generated from EDMX file: H:\DEV\DailyShakespeare\DailyShakespeare.DAL\DailyShakespeare.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DailyShakespeare];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_MonologueUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Monologue] DROP CONSTRAINT [FK_MonologueUser];
GO
IF OBJECT_ID(N'[dbo].[FK_MonologueEmotionalState_Monologue]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MonologueEmotionalState] DROP CONSTRAINT [FK_MonologueEmotionalState_Monologue];
GO
IF OBJECT_ID(N'[dbo].[FK_MonologueEmotionalState_EmotionalState]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MonologueEmotionalState] DROP CONSTRAINT [FK_MonologueEmotionalState_EmotionalState];
GO
IF OBJECT_ID(N'[dbo].[FK_PlayCharacter]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Character] DROP CONSTRAINT [FK_PlayCharacter];
GO
IF OBJECT_ID(N'[dbo].[FK_MonologueCharacter]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Monologue] DROP CONSTRAINT [FK_MonologueCharacter];
GO
IF OBJECT_ID(N'[dbo].[FK_GenderCharacter]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Character] DROP CONSTRAINT [FK_GenderCharacter];
GO
IF OBJECT_ID(N'[dbo].[FK_UserTypeUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[User] DROP CONSTRAINT [FK_UserTypeUser];
GO
IF OBJECT_ID(N'[dbo].[FK_CharacterUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Character] DROP CONSTRAINT [FK_CharacterUser];
GO
IF OBJECT_ID(N'[dbo].[FK_PlayUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Play] DROP CONSTRAINT [FK_PlayUser];
GO
IF OBJECT_ID(N'[dbo].[FK_UpdateUpdateType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Update] DROP CONSTRAINT [FK_UpdateUpdateType];
GO
IF OBJECT_ID(N'[dbo].[FK_UpdateUpdateAction]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Update] DROP CONSTRAINT [FK_UpdateUpdateAction];
GO
IF OBJECT_ID(N'[dbo].[FK_UpdateUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Update] DROP CONSTRAINT [FK_UpdateUser];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Monologue]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Monologue];
GO
IF OBJECT_ID(N'[dbo].[User]', 'U') IS NOT NULL
    DROP TABLE [dbo].[User];
GO
IF OBJECT_ID(N'[dbo].[EmotionalState]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmotionalState];
GO
IF OBJECT_ID(N'[dbo].[Play]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Play];
GO
IF OBJECT_ID(N'[dbo].[Character]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Character];
GO
IF OBJECT_ID(N'[dbo].[Gender]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Gender];
GO
IF OBJECT_ID(N'[dbo].[UserType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserType];
GO
IF OBJECT_ID(N'[dbo].[Update]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Update];
GO
IF OBJECT_ID(N'[dbo].[UpdateType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UpdateType];
GO
IF OBJECT_ID(N'[dbo].[UpdateAction]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UpdateAction];
GO
IF OBJECT_ID(N'[dbo].[MonologueEmotionalState]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MonologueEmotionalState];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Monologue'
CREATE TABLE [dbo].[Monologue] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Content] nvarchar(max)  NOT NULL,
    [LastUpdatedOn] datetime  NOT NULL,
    [LastUpdatedBy_Id] int  NOT NULL,
    [Character_Id] int  NOT NULL
);
GO

-- Creating table 'User'
CREATE TABLE [dbo].[User] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Username] nvarchar(max)  NOT NULL,
    [UserType_Id] int  NOT NULL
);
GO

-- Creating table 'EmotionalState'
CREATE TABLE [dbo].[EmotionalState] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Play'
CREATE TABLE [dbo].[Play] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Year] int  NOT NULL,
    [LastUpdatedOn] datetime  NULL,
    [LastUpdatedBy_Id] int  NOT NULL
);
GO

-- Creating table 'Character'
CREATE TABLE [dbo].[Character] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Bio] nvarchar(max)  NOT NULL,
    [LastUpdatedOn] datetime  NOT NULL,
    [Play_Id] int  NOT NULL,
    [Gender_Id] int  NOT NULL,
    [LastUpdatedBy_Id] int  NOT NULL
);
GO

-- Creating table 'Gender'
CREATE TABLE [dbo].[Gender] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'UserType'
CREATE TABLE [dbo].[UserType] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Update'
CREATE TABLE [dbo].[Update] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UpdatedItemId] int  NOT NULL,
    [Date] datetime  NOT NULL,
    [UpdatedItemName] nvarchar(max)  NOT NULL,
    [UpdateType_Id] int  NOT NULL,
    [UpdateAction_Id] int  NOT NULL,
    [User_Id] int  NOT NULL
);
GO

-- Creating table 'UpdateType'
CREATE TABLE [dbo].[UpdateType] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'UpdateAction'
CREATE TABLE [dbo].[UpdateAction] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'MonologueEmotionalState'
CREATE TABLE [dbo].[MonologueEmotionalState] (
    [Monologues_Id] int  NOT NULL,
    [EmotionalStates_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Monologue'
ALTER TABLE [dbo].[Monologue]
ADD CONSTRAINT [PK_Monologue]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'User'
ALTER TABLE [dbo].[User]
ADD CONSTRAINT [PK_User]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EmotionalState'
ALTER TABLE [dbo].[EmotionalState]
ADD CONSTRAINT [PK_EmotionalState]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Play'
ALTER TABLE [dbo].[Play]
ADD CONSTRAINT [PK_Play]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Character'
ALTER TABLE [dbo].[Character]
ADD CONSTRAINT [PK_Character]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Gender'
ALTER TABLE [dbo].[Gender]
ADD CONSTRAINT [PK_Gender]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UserType'
ALTER TABLE [dbo].[UserType]
ADD CONSTRAINT [PK_UserType]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Update'
ALTER TABLE [dbo].[Update]
ADD CONSTRAINT [PK_Update]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UpdateType'
ALTER TABLE [dbo].[UpdateType]
ADD CONSTRAINT [PK_UpdateType]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UpdateAction'
ALTER TABLE [dbo].[UpdateAction]
ADD CONSTRAINT [PK_UpdateAction]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Monologues_Id], [EmotionalStates_Id] in table 'MonologueEmotionalState'
ALTER TABLE [dbo].[MonologueEmotionalState]
ADD CONSTRAINT [PK_MonologueEmotionalState]
    PRIMARY KEY NONCLUSTERED ([Monologues_Id], [EmotionalStates_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [LastUpdatedBy_Id] in table 'Monologue'
ALTER TABLE [dbo].[Monologue]
ADD CONSTRAINT [FK_MonologueUser]
    FOREIGN KEY ([LastUpdatedBy_Id])
    REFERENCES [dbo].[User]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_MonologueUser'
CREATE INDEX [IX_FK_MonologueUser]
ON [dbo].[Monologue]
    ([LastUpdatedBy_Id]);
GO

-- Creating foreign key on [Monologues_Id] in table 'MonologueEmotionalState'
ALTER TABLE [dbo].[MonologueEmotionalState]
ADD CONSTRAINT [FK_MonologueEmotionalState_Monologue]
    FOREIGN KEY ([Monologues_Id])
    REFERENCES [dbo].[Monologue]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [EmotionalStates_Id] in table 'MonologueEmotionalState'
ALTER TABLE [dbo].[MonologueEmotionalState]
ADD CONSTRAINT [FK_MonologueEmotionalState_EmotionalState]
    FOREIGN KEY ([EmotionalStates_Id])
    REFERENCES [dbo].[EmotionalState]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_MonologueEmotionalState_EmotionalState'
CREATE INDEX [IX_FK_MonologueEmotionalState_EmotionalState]
ON [dbo].[MonologueEmotionalState]
    ([EmotionalStates_Id]);
GO

-- Creating foreign key on [Play_Id] in table 'Character'
ALTER TABLE [dbo].[Character]
ADD CONSTRAINT [FK_PlayCharacter]
    FOREIGN KEY ([Play_Id])
    REFERENCES [dbo].[Play]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PlayCharacter'
CREATE INDEX [IX_FK_PlayCharacter]
ON [dbo].[Character]
    ([Play_Id]);
GO

-- Creating foreign key on [Character_Id] in table 'Monologue'
ALTER TABLE [dbo].[Monologue]
ADD CONSTRAINT [FK_MonologueCharacter]
    FOREIGN KEY ([Character_Id])
    REFERENCES [dbo].[Character]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_MonologueCharacter'
CREATE INDEX [IX_FK_MonologueCharacter]
ON [dbo].[Monologue]
    ([Character_Id]);
GO

-- Creating foreign key on [Gender_Id] in table 'Character'
ALTER TABLE [dbo].[Character]
ADD CONSTRAINT [FK_GenderCharacter]
    FOREIGN KEY ([Gender_Id])
    REFERENCES [dbo].[Gender]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_GenderCharacter'
CREATE INDEX [IX_FK_GenderCharacter]
ON [dbo].[Character]
    ([Gender_Id]);
GO

-- Creating foreign key on [UserType_Id] in table 'User'
ALTER TABLE [dbo].[User]
ADD CONSTRAINT [FK_UserTypeUser]
    FOREIGN KEY ([UserType_Id])
    REFERENCES [dbo].[UserType]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserTypeUser'
CREATE INDEX [IX_FK_UserTypeUser]
ON [dbo].[User]
    ([UserType_Id]);
GO

-- Creating foreign key on [LastUpdatedBy_Id] in table 'Character'
ALTER TABLE [dbo].[Character]
ADD CONSTRAINT [FK_CharacterUser]
    FOREIGN KEY ([LastUpdatedBy_Id])
    REFERENCES [dbo].[User]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CharacterUser'
CREATE INDEX [IX_FK_CharacterUser]
ON [dbo].[Character]
    ([LastUpdatedBy_Id]);
GO

-- Creating foreign key on [LastUpdatedBy_Id] in table 'Play'
ALTER TABLE [dbo].[Play]
ADD CONSTRAINT [FK_PlayUser]
    FOREIGN KEY ([LastUpdatedBy_Id])
    REFERENCES [dbo].[User]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PlayUser'
CREATE INDEX [IX_FK_PlayUser]
ON [dbo].[Play]
    ([LastUpdatedBy_Id]);
GO

-- Creating foreign key on [UpdateType_Id] in table 'Update'
ALTER TABLE [dbo].[Update]
ADD CONSTRAINT [FK_UpdateUpdateType]
    FOREIGN KEY ([UpdateType_Id])
    REFERENCES [dbo].[UpdateType]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UpdateUpdateType'
CREATE INDEX [IX_FK_UpdateUpdateType]
ON [dbo].[Update]
    ([UpdateType_Id]);
GO

-- Creating foreign key on [UpdateAction_Id] in table 'Update'
ALTER TABLE [dbo].[Update]
ADD CONSTRAINT [FK_UpdateUpdateAction]
    FOREIGN KEY ([UpdateAction_Id])
    REFERENCES [dbo].[UpdateAction]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UpdateUpdateAction'
CREATE INDEX [IX_FK_UpdateUpdateAction]
ON [dbo].[Update]
    ([UpdateAction_Id]);
GO

-- Creating foreign key on [User_Id] in table 'Update'
ALTER TABLE [dbo].[Update]
ADD CONSTRAINT [FK_UpdateUser]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[User]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UpdateUser'
CREATE INDEX [IX_FK_UpdateUser]
ON [dbo].[Update]
    ([User_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------