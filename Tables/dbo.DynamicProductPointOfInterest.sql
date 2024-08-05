CREATE TABLE [dbo].[DynamicProductPointOfInterest] (
  [Id] [int] IDENTITY,
  [IdDynamic] [int] NOT NULL,
  [IdProduct] [int] NOT NULL,
  [IdPointOfInterest] [int] NOT NULL,
  CONSTRAINT [PK_DynamicProductPointOfInterest] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[DynamicProductPointOfInterest]
  ADD CONSTRAINT [FK_DynamicProductPointOfInterest_Dynamic] FOREIGN KEY ([IdDynamic]) REFERENCES [dbo].[Dynamic] ([Id])
GO

ALTER TABLE [dbo].[DynamicProductPointOfInterest]
  ADD CONSTRAINT [FK_DynamicProductPointOfInterest_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO

ALTER TABLE [dbo].[DynamicProductPointOfInterest]
  ADD CONSTRAINT [FK_DynamicProductPointOfInterest_Product] FOREIGN KEY ([IdProduct]) REFERENCES [dbo].[Product] ([Id])
GO