CREATE TABLE [dbo].[Asset] (
  [Id] [int] IDENTITY,
  [Name] [varchar](50) NOT NULL,
  [Identifier] [varchar](50) NULL,
  [BarCode] [varchar](100) NOT NULL,
  [ImageArray] [varbinary](max) NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_Asset_Deleted] DEFAULT (0),
  [IdAssetType] [int] NULL,
  [IdPersonOfInterest] [int] NULL,
  [Pending] [bit] NOT NULL CONSTRAINT [DF_Asset_Pending] DEFAULT (0),
  [IdCompany] [int] NULL,
  [IdCategory] [int] NULL,
  [IdSubCategory] [int] NULL,
  CONSTRAINT [PK_Asset] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Asset]
  ADD CONSTRAINT [FK_Asset_AssetCategory] FOREIGN KEY ([IdCategory]) REFERENCES [dbo].[AssetCategory] ([Id])
GO

ALTER TABLE [dbo].[Asset]
  ADD CONSTRAINT [FK_Asset_AssetCategory1] FOREIGN KEY ([IdSubCategory]) REFERENCES [dbo].[AssetCategory] ([Id])
GO

ALTER TABLE [dbo].[Asset]
  ADD CONSTRAINT [FK_Asset_AssetType] FOREIGN KEY ([IdAssetType]) REFERENCES [dbo].[AssetType] ([Id])
GO

ALTER TABLE [dbo].[Asset]
  ADD CONSTRAINT [FK_Asset_Company] FOREIGN KEY ([IdCompany]) REFERENCES [dbo].[Company] ([Id])
GO

ALTER TABLE [dbo].[Asset]
  ADD CONSTRAINT [FK_Asset_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO