CREATE TABLE [dbo].[POIHierarchyLevel2] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [SapId] [varchar](100) NOT NULL,
  [Society] [varchar](4) NULL,
  [HierarchyLevel1Id] [int] NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_Father_Deleted] DEFAULT (0),
  [CreatedDate] [datetime] NULL,
  [IdUser] [int] NULL,
  CONSTRAINT [PK_Father] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[POIHierarchyLevel2]
  ADD CONSTRAINT [FK_Father_Grandfather] FOREIGN KEY ([HierarchyLevel1Id]) REFERENCES [dbo].[POIHierarchyLevel1] ([Id])
GO

ALTER TABLE [dbo].[POIHierarchyLevel2]
  ADD CONSTRAINT [FK_Father_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO