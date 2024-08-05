CREATE TABLE [dbo].[OrderReportProductQuantity] (
  [Id] [int] IDENTITY,
  [IdOrderReport] [int] NULL,
  [IdProduct] [int] NULL,
  [Quantity] [int] NULL,
  CONSTRAINT [PK_OrderReportProductQuantity] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[OrderReportProductQuantity]
  ADD CONSTRAINT [FK_OrderReportProductQuantity_OrderReport] FOREIGN KEY ([IdOrderReport]) REFERENCES [dbo].[OrderReport] ([Id])
GO

ALTER TABLE [dbo].[OrderReportProductQuantity]
  ADD CONSTRAINT [FK_OrderReportProductQuantity_Product] FOREIGN KEY ([IdProduct]) REFERENCES [dbo].[Product] ([Id])
GO