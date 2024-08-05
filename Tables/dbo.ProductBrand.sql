CREATE TABLE [dbo].[ProductBrand] (
  [Id] [int] IDENTITY,
  [IdCompany] [int] NOT NULL,
  [Identifier] [varchar](50) NULL,
  [Name] [varchar](50) NOT NULL,
  [Description] [varchar](512) NULL,
  [ImageName] [varchar](256) NULL,
  [ImageUrl] [varchar](512) NULL,
  [IsSubBrand] [bit] NOT NULL,
  [IdFather] [int] NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_ProductBrand_Deleted] DEFAULT (0),
  CONSTRAINT [PK_ProductBrand] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductBrand]
  ADD CONSTRAINT [FK_ProductBrand_Company] FOREIGN KEY ([IdCompany]) REFERENCES [dbo].[Company] ([Id])
GO

ALTER TABLE [dbo].[ProductBrand]
  ADD CONSTRAINT [FK_ProductBrand_ProductBrand] FOREIGN KEY ([IdFather]) REFERENCES [dbo].[ProductBrand] ([Id])
GO