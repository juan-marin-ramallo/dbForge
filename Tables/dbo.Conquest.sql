CREATE TABLE [dbo].[Conquest] (
  [Id] [int] IDENTITY,
  [ConquestTypeId] [int] NOT NULL,
  [IdPersonOfInterest] [int] NOT NULL,
  [IdPointOfInterest] [int] NOT NULL,
  [Date] [datetime] NOT NULL,
  [Description] [varchar](250) NULL,
  [Amount] [decimal](8, 2) NOT NULL CONSTRAINT [DF_Conquest_Amount] DEFAULT (1),
  [Active] [bit] NOT NULL CONSTRAINT [DF_Conquest_Active] DEFAULT (1),
  [CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_Conquest_CreatedDate] DEFAULT (getutcdate()),
  CONSTRAINT [PK_Conquests] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Conquest]
  ADD CONSTRAINT [FK_Conquests_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[Conquest]
  ADD CONSTRAINT [FK_Conquests_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO