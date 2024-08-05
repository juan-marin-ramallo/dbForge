CREATE TABLE [dbo].[PromotionPointOfInterest] (
  [Id] [int] IDENTITY,
  [IdPointOfInterest] [int] NULL,
  [IdPromotion] [int] NULL,
  [Date] [datetime] NULL,
  CONSTRAINT [PK_PromotionPointOfInterest] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [NCL_IX_PromotionPointOfInterest_IdPromotion]
  ON [dbo].[PromotionPointOfInterest] ([IdPromotion])
  INCLUDE ([IdPointOfInterest])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[PromotionPointOfInterest]
  ADD CONSTRAINT [FK_PromotionPointOfInterest_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO

ALTER TABLE [dbo].[PromotionPointOfInterest]
  ADD CONSTRAINT [FK_PromotionPointOfInterest_Promotion] FOREIGN KEY ([IdPromotion]) REFERENCES [dbo].[Promotion] ([Id])
GO