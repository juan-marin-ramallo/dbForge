CREATE TABLE [dbo].[Subcategory] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [SapId] [varchar](18) NOT NULL,
  [Society] [varchar](4) NULL,
  [CategoryId] [int] NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_Subcategory_Deleted] DEFAULT (0),
  CONSTRAINT [PK_Subcategory] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Subcategory]
  ADD CONSTRAINT [FK_Subcategory_Category] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Category] ([Id])
GO