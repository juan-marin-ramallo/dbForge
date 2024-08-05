CREATE TABLE [dbo].[POIHierarchyLevel1] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [SapId] [varchar](100) NOT NULL,
  [Society] [varchar](4) NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_Grandfather_Deleted] DEFAULT (0),
  [CreatedDate] [datetime] NULL,
  [IdUser] [int] NULL,
  CONSTRAINT [PK_Grandfather] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[POIHierarchyLevel1]
  ADD CONSTRAINT [FK_Grandfather_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO