CREATE TABLE [dbo].[ProductReportAttributeOption] (
  [Id] [int] IDENTITY,
  [IdProductReportAttribute] [int] NOT NULL,
  [Text] [varchar](100) NOT NULL,
  [IsDefault] [bit] NOT NULL CONSTRAINT [DF_ProductReportCustomAttributeOption_Default] DEFAULT (0),
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_ProductReportCustomAttributeOption_Deleted] DEFAULT (0),
  CONSTRAINT [PK_ProductReportCustomAttributeOption] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductReportAttributeOption]
  ADD CONSTRAINT [FK_ProductReportAttributeOption_ProductReportAttribute] FOREIGN KEY ([IdProductReportAttribute]) REFERENCES [dbo].[ProductReportAttribute] ([Id])
GO