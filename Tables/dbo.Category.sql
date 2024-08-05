CREATE TABLE [dbo].[Category] (
  [Id] [int] IDENTITY,
  [Name] [varchar](50) NOT NULL,
  [SapId] [varchar](18) NOT NULL,
  [Society] [varchar](4) NULL,
  [BrandId] [int] NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_Category_Deleted] DEFAULT (0),
  CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Category]
  ADD CONSTRAINT [FK_Category_Brand] FOREIGN KEY ([BrandId]) REFERENCES [dbo].[Brand] ([Id])
GO