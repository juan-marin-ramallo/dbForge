CREATE TABLE [dbo].[ProductReportAttributeValue] (
  [Id] [int] IDENTITY,
  [Value] [varchar](max) NULL,
  [IdProductReport] [int] NOT NULL,
  [IdProductReportAttribute] [int] NOT NULL,
  [IdProductReportAttributeOption] [int] NULL,
  [ImageName] [varchar](100) NULL,
  [ImageEncoded] [varbinary](max) NULL,
  [ImageUrl] [varchar](5000) NULL,
  CONSTRAINT [PK_ProductReportCustomAttributeValue] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [NCL_IX_ProductReportAttributeValue_IdProductReport]
  ON [dbo].[ProductReportAttributeValue] ([IdProductReport])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductReportAttributeValue]
  ADD CONSTRAINT [FK_ProductReportAttributeValue_ProductReport] FOREIGN KEY ([IdProductReport]) REFERENCES [dbo].[ProductReportDynamic] ([Id])
GO

ALTER TABLE [dbo].[ProductReportAttributeValue]
  ADD CONSTRAINT [FK_ProductReportAttributeValue_ProductReportAttribute] FOREIGN KEY ([IdProductReportAttribute]) REFERENCES [dbo].[ProductReportAttribute] ([Id])
GO

ALTER TABLE [dbo].[ProductReportAttributeValue]
  ADD CONSTRAINT [FK_ProductReportAttributeValue_ProductReportAttributeOption] FOREIGN KEY ([IdProductReportAttributeOption]) REFERENCES [dbo].[ProductReportAttributeOption] ([Id])
GO