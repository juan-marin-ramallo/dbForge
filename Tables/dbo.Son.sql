CREATE TABLE [dbo].[Son] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [SapId] [varchar](18) NOT NULL,
  [Society] [varchar](4) NULL,
  [FatherId] [int] NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_Son_Deleted] DEFAULT (0),
  CONSTRAINT [PK_Son] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Son]
  ADD CONSTRAINT [FK_Son_Father] FOREIGN KEY ([FatherId]) REFERENCES [dbo].[POIHierarchyLevel2] ([Id])
GO