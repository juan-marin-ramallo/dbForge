CREATE TABLE [dbo].[PowerpointMarkupProductReportElement] (
  [Id] [int] IDENTITY,
  [IdPowerpointMarkupProductReport] [int] NOT NULL,
  [PageIndex] [int] NOT NULL,
  [IdPowerpointMarkupElement] [int] NOT NULL,
  [IdProductReportAttribute] [int] NOT NULL,
  [ShowTitle] [bit] NOT NULL,
  CONSTRAINT [PK_PowerpointMarkupProductReportElement] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PowerpointMarkupProductReportElement]
  ADD CONSTRAINT [FK_PowerpointMarkupProductReportElement_PowerpointMarkupElement] FOREIGN KEY ([IdPowerpointMarkupElement]) REFERENCES [dbo].[PowerpointMarkupElement] ([Id])
GO

ALTER TABLE [dbo].[PowerpointMarkupProductReportElement]
  ADD CONSTRAINT [FK_PowerpointMarkupProductReportElement_PowerpointMarkupProductReport] FOREIGN KEY ([IdPowerpointMarkupProductReport]) REFERENCES [dbo].[PowerpointMarkupProductReport] ([Id])
GO

ALTER TABLE [dbo].[PowerpointMarkupProductReportElement]
  ADD CONSTRAINT [FK_PowerpointMarkupProductReportElement_ProductReportAttribute] FOREIGN KEY ([IdProductReportAttribute]) REFERENCES [dbo].[ProductReportAttribute] ([Id])
GO