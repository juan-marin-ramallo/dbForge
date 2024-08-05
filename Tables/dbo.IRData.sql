CREATE TABLE [dbo].[IRData] (
  [Id] [int] IDENTITY,
  [IdPointOfInterest] [int] NOT NULL,
  [IdPersonOfInterest] [int] NOT NULL,
  [CreateDate] [datetime] NOT NULL CONSTRAINT [DF_IRData_CreateDate] DEFAULT (getdate()),
  [Date] [datetime] NOT NULL,
  [IdCategory] [int] NOT NULL,
  [IdShareOfShelf] [int] NULL,
  [IdMissingProduct] [int] NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_IRData_Deleted] DEFAULT (0),
  CONSTRAINT [PK_IRData] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[IRData]
  ADD CONSTRAINT [FK_IRData_IdCategory_ProductCategory_Id] FOREIGN KEY ([IdCategory]) REFERENCES [dbo].[ProductCategory] ([Id])
GO

ALTER TABLE [dbo].[IRData]
  ADD CONSTRAINT [FK_IRData_IdMissingProduct_ProductMissingPointOfInterest_Id] FOREIGN KEY ([IdMissingProduct]) REFERENCES [dbo].[ProductMissingPointOfInterest] ([Id])
GO

ALTER TABLE [dbo].[IRData]
  ADD CONSTRAINT [FK_IRData_IdPersonOfInterest_PersonOfInterest_Id] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[IRData]
  ADD CONSTRAINT [FK_IRData_IdPointOfInterest_PointOfInterest_Id] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO

ALTER TABLE [dbo].[IRData]
  ADD CONSTRAINT [FK_IRData_IdShareOfShelf_ShareOfShelfReport_Id] FOREIGN KEY ([IdShareOfShelf]) REFERENCES [dbo].[ShareOfShelfReport] ([Id])
GO