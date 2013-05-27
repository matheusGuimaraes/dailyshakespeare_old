
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 05/27/2013 01:10:01
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


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Monologues'
CREATE TABLE [dbo].[Monologues] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Content] nvarchar(max)  NOT NULL,
    [Play_Id] int  NOT NULL,
    [LastUpdatedBy_Id] int  NOT NULL,
    [Character_Id] int  NOT NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [MonologueId] int  NOT NULL
);
GO

-- Creating table 'EmotionalStates'
CREATE TABLE [dbo].[EmotionalStates] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Plays'
CREATE TABLE [dbo].[Plays] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Year] int  NULL
);
GO

-- Creating table 'Characters'
CREATE TABLE [dbo].[Characters] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Play_Id] int  NOT NULL
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

-- Creating primary key on [Id] in table 'Monologues'
ALTER TABLE [dbo].[Monologues]
ADD CONSTRAINT [PK_Monologues]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EmotionalStates'
ALTER TABLE [dbo].[EmotionalStates]
ADD CONSTRAINT [PK_EmotionalStates]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Plays'
ALTER TABLE [dbo].[Plays]
ADD CONSTRAINT [PK_Plays]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Characters'
ALTER TABLE [dbo].[Characters]
ADD CONSTRAINT [PK_Characters]
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

-- Creating foreign key on [Play_Id] in table 'Monologues'
ALTER TABLE [dbo].[Monologues]
ADD CONSTRAINT [FK_MonologuePlay]
    FOREIGN KEY ([Play_Id])
    REFERENCES [dbo].[Plays]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_MonologuePlay'
CREATE INDEX [IX_FK_MonologuePlay]
ON [dbo].[Monologues]
    ([Play_Id]);
GO

-- Creating foreign key on [LastUpdatedBy_Id] in table 'Monologues'
ALTER TABLE [dbo].[Monologues]
ADD CONSTRAINT [FK_MonologueUser]
    FOREIGN KEY ([LastUpdatedBy_Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_MonologueUser'
CREATE INDEX [IX_FK_MonologueUser]
ON [dbo].[Monologues]
    ([LastUpdatedBy_Id]);
GO

-- Creating foreign key on [Monologues_Id] in table 'MonologueEmotionalState'
ALTER TABLE [dbo].[MonologueEmotionalState]
ADD CONSTRAINT [FK_MonologueEmotionalState_Monologue]
    FOREIGN KEY ([Monologues_Id])
    REFERENCES [dbo].[Monologues]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [EmotionalStates_Id] in table 'MonologueEmotionalState'
ALTER TABLE [dbo].[MonologueEmotionalState]
ADD CONSTRAINT [FK_MonologueEmotionalState_EmotionalState]
    FOREIGN KEY ([EmotionalStates_Id])
    REFERENCES [dbo].[EmotionalStates]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_MonologueEmotionalState_EmotionalState'
CREATE INDEX [IX_FK_MonologueEmotionalState_EmotionalState]
ON [dbo].[MonologueEmotionalState]
    ([EmotionalStates_Id]);
GO

-- Creating foreign key on [Play_Id] in table 'Characters'
ALTER TABLE [dbo].[Characters]
ADD CONSTRAINT [FK_PlayCharacter]
    FOREIGN KEY ([Play_Id])
    REFERENCES [dbo].[Plays]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PlayCharacter'
CREATE INDEX [IX_FK_PlayCharacter]
ON [dbo].[Characters]
    ([Play_Id]);
GO

-- Creating foreign key on [Character_Id] in table 'Monologues'
ALTER TABLE [dbo].[Monologues]
ADD CONSTRAINT [FK_MonologueCharacter]
    FOREIGN KEY ([Character_Id])
    REFERENCES [dbo].[Characters]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_MonologueCharacter'
CREATE INDEX [IX_FK_MonologueCharacter]
ON [dbo].[Monologues]
    ([Character_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------