CREATE TABLE [dbo].[OrderNextStatus] (
  [Id] [int] IDENTITY,
  [IdStatus] [int] NOT NULL,
  [IdNextStatus] [int] NOT NULL,
  CONSTRAINT [PK_OrderNextStatus] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[OrderNextStatus]
  ADD CONSTRAINT [FK_OrderNextStatus_OrderStatus_Current] FOREIGN KEY ([IdStatus]) REFERENCES [dbo].[OrderStatus] ([Id])
GO

ALTER TABLE [dbo].[OrderNextStatus]
  ADD CONSTRAINT [FK_OrderNextStatus_OrderStatus_Next] FOREIGN KEY ([IdNextStatus]) REFERENCES [dbo].[OrderStatus] ([Id])
GO