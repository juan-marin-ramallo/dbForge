CREATE TABLE [dbo].[OrderReportTrazability] (
  [Id] [int] IDENTITY,
  [IdOrderReport] [int] NOT NULL,
  [OrderDateTime] [datetime] NOT NULL,
  [ReceivedDateTime] [datetime] NOT NULL,
  [Status] [smallint] NULL,
  [IdProduct] [int] NULL,
  [ProductName] [varchar](100) NULL,
  [ProductPrice] [decimal](18, 3) NULL,
  [Quantity] [int] NULL,
  [IsModification] [bit] NOT NULL CONSTRAINT [DF__OrderRepo__IsMod__6B268130] DEFAULT (0),
  [IdPersonOfInterest] [int] NULL CONSTRAINT [DF__OrderRepo__IdPer__03F22EFA] DEFAULT (0),
  [IdUser] [int] NULL,
  CONSTRAINT [PK_OrderReportTrazability] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[OrderReportTrazability]
  ADD CONSTRAINT [FK_OrderReportTrazability_OrderReport] FOREIGN KEY ([IdOrderReport]) REFERENCES [dbo].[OrderReport] ([Id])
GO

ALTER TABLE [dbo].[OrderReportTrazability]
  ADD CONSTRAINT [FK_OrderReportTrazability_Product] FOREIGN KEY ([IdProduct]) REFERENCES [dbo].[Product] ([Id])
GO