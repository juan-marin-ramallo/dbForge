CREATE TABLE [dbo].[OrderReportAttributeValue] (
  [Id] [int] IDENTITY,
  [IdOrderReport] [int] NULL,
  [IdProduct] [int] NULL,
  [IdOrderReportAttribute] [int] NULL,
  [IdOrderReportAttributeOption] [int] NULL,
  [ImageName] [varchar](100) NULL,
  [ImageUrl] [varchar](5000) NULL,
  [ImageEncoded] [varbinary](max) NULL,
  [Value] [varchar](max) NULL,
  CONSTRAINT [PK_OrderReportAttributeValue] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[OrderReportAttributeValue]
  ADD CONSTRAINT [FK_OrderReportAttributeValue_OrderReport] FOREIGN KEY ([IdOrderReport]) REFERENCES [dbo].[OrderReport] ([Id])
GO

ALTER TABLE [dbo].[OrderReportAttributeValue]
  ADD CONSTRAINT [FK_OrderReportAttributeValue_OrderReportAttribute] FOREIGN KEY ([IdOrderReportAttribute]) REFERENCES [dbo].[OrderReportAttribute] ([Id])
GO

ALTER TABLE [dbo].[OrderReportAttributeValue]
  ADD CONSTRAINT [FK_OrderReportAttributeValue_Product] FOREIGN KEY ([IdProduct]) REFERENCES [dbo].[Product] ([Id])
GO