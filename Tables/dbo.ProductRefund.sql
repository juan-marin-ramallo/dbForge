CREATE TABLE [dbo].[ProductRefund] (
  [Id] [int] IDENTITY,
  [Date] [datetime] NOT NULL,
  [IdPointOfInterest] [int] NOT NULL,
  [IdPersonOfInterest] [int] NOT NULL,
  [IdProduct] [int] NOT NULL,
  [Quantity] [int] NULL,
  [Description] [varchar](230) NULL,
  [IdRefundOption] [int] NULL,
  CONSTRAINT [PK_ProductRefund] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductRefund]
  ADD CONSTRAINT [FK_ProductRefund_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[ProductRefund]
  ADD CONSTRAINT [FK_ProductRefund_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO

ALTER TABLE [dbo].[ProductRefund]
  ADD CONSTRAINT [FK_ProductRefund_Product] FOREIGN KEY ([IdProduct]) REFERENCES [dbo].[Product] ([Id])
GO

ALTER TABLE [dbo].[ProductRefund]
  ADD CONSTRAINT [FK_ProductRefund_ProductRefundOptions] FOREIGN KEY ([IdRefundOption]) REFERENCES [dbo].[ProductRefundOptions] ([Id])
GO