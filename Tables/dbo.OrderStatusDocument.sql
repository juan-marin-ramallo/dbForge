CREATE TABLE [dbo].[OrderStatusDocument] (
  [Id] [int] IDENTITY,
  [IdStatus] [int] NOT NULL,
  [IdType] [int] NOT NULL,
  CONSTRAINT [PK_OrderStatusDocument] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO