CREATE TABLE [dbo].[ShareOfShelfObjective] (
  [Id] [int] IDENTITY,
  [IdProductCategory] [int] NOT NULL,
  [IdZone] [int] NULL,
  [IdPOIHierarchyLevel1] [int] NULL,
  [IdPOIHierarchyLevel2] [int] NULL,
  [StartDate] [datetime] NOT NULL,
  [EndDate] [datetime] NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_ShareOfShelfObjective_Deleted] DEFAULT (0),
  CONSTRAINT [PK_ShareOfShelfObjective] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ShareOfShelfObjective]
  ADD CONSTRAINT [FK_ShareOfShelfObjective_POIHierarchyLevel1] FOREIGN KEY ([IdPOIHierarchyLevel1]) REFERENCES [dbo].[POIHierarchyLevel1] ([Id])
GO

ALTER TABLE [dbo].[ShareOfShelfObjective]
  ADD CONSTRAINT [FK_ShareOfShelfObjective_POIHierarchyLevel2] FOREIGN KEY ([IdPOIHierarchyLevel2]) REFERENCES [dbo].[POIHierarchyLevel2] ([Id])
GO

ALTER TABLE [dbo].[ShareOfShelfObjective]
  ADD CONSTRAINT [FK_ShareOfShelfObjective_ProductCategory] FOREIGN KEY ([IdProductCategory]) REFERENCES [dbo].[ProductCategory] ([Id])
GO

ALTER TABLE [dbo].[ShareOfShelfObjective]
  ADD CONSTRAINT [FK_ShareOfShelfObjective_Zone] FOREIGN KEY ([IdZone]) REFERENCES [dbo].[Zone] ([Id])
GO