CREATE TABLE [dbo].[ProductRefundAttributeValue] (
  [Id] [int] IDENTITY,
  [Value] [varchar](max) NULL,
  [IdProductRefund] [int] NULL,
  [IdProductRefundAttribute] [int] NULL,
  [IdProductRefundAttributeOption] [int] NULL,
  [ImageName] [varchar](100) NULL,
  [ImageEncoded] [varbinary](max) NULL,
  [ImageUrl] [varchar](500) NULL,
  CONSTRAINT [PK_ProductRefundAttributeValue] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductRefundAttributeValue]
  ADD CONSTRAINT [FK_ProductRefundAttributeValue_ProductRefund] FOREIGN KEY ([IdProductRefund]) REFERENCES [dbo].[ProductRefund] ([Id])
GO

ALTER TABLE [dbo].[ProductRefundAttributeValue]
  ADD CONSTRAINT [FK_ProductRefundAttributeValue_ProductRefundAttribute] FOREIGN KEY ([IdProductRefundAttribute]) REFERENCES [dbo].[ProductRefundAttribute] ([Id])
GO

ALTER TABLE [dbo].[ProductRefundAttributeValue]
  ADD CONSTRAINT [FK_ProductRefundAttributeValue_ProductRefundAttributeOption] FOREIGN KEY ([IdProductRefundAttributeOption]) REFERENCES [dbo].[ProductRefundAttributeOption] ([Id])
GO