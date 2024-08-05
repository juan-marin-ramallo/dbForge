CREATE TABLE [dbo].[ProductRefundAttributeOption] (
  [Id] [int] IDENTITY,
  [IdProductRefundAttribute] [int] NULL,
  [Text] [varchar](100) NULL,
  [IsDefault] [bit] NULL,
  [Deleted] [bit] NULL,
  CONSTRAINT [PK_ProductRefundAttributeOption] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductRefundAttributeOption]
  ADD CONSTRAINT [FK_ProductRefundAttributeOption_ProductRefundAttribute] FOREIGN KEY ([IdProductRefundAttribute]) REFERENCES [dbo].[ProductRefundAttribute] ([Id])
GO