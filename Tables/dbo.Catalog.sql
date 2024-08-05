CREATE TABLE [dbo].[Catalog] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_Catalog_Deleted] DEFAULT (0),
  CONSTRAINT [PK_Catalog] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO