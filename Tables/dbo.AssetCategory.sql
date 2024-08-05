CREATE TABLE [dbo].[AssetCategory] (
  [Id] [int] IDENTITY,
  [Name] [varchar](50) NULL,
  [Identifier] [varchar](50) NULL,
  [IsSubCategory] [bit] NULL CONSTRAINT [DF_AssetCategory_IsSubCategory] DEFAULT (0),
  [IdCategoryFather] [int] NULL,
  [CreatedDate] [datetime] NULL,
  [IdUser] [int] NULL,
  [Deleted] [bit] NULL CONSTRAINT [DF_AssetCategory_Deleted] DEFAULT (0),
  CONSTRAINT [PK_AssetCategory] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[AssetCategory]
  ADD CONSTRAINT [FK_AssetCategory_AssetCategory] FOREIGN KEY ([IdCategoryFather]) REFERENCES [dbo].[AssetCategory] ([Id])
GO

ALTER TABLE [dbo].[AssetCategory]
  ADD CONSTRAINT [FK_AssetCategory_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO