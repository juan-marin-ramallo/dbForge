CREATE TABLE [dbo].[OrderReportAttributeOption] (
  [Id] [int] IDENTITY,
  [IdOrderReportAttribute] [int] NOT NULL,
  [Text] [varchar](100) NOT NULL,
  [IsDefault] [bit] NOT NULL CONSTRAINT [DF_OrderReportAttributeOption_Default] DEFAULT (0),
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_OrderReportAttributeOption_Deleted] DEFAULT (0),
  CONSTRAINT [PK_OrderReportAttributeOption] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO