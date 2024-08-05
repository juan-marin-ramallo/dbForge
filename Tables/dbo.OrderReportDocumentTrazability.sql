CREATE TABLE [dbo].[OrderReportDocumentTrazability] (
  [IdOrderReport] [int] NOT NULL,
  [IdType] [int] NOT NULL,
  [Status] [smallint] NOT NULL,
  [Comment] [varchar](4096) NULL,
  [ImageName] [varchar](256) NULL,
  [ImageUrl] [varchar](2048) NULL,
  CONSTRAINT [COMP_NAME] PRIMARY KEY CLUSTERED ([IdOrderReport], [IdType], [Status])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[OrderReportDocumentTrazability]
  ADD CONSTRAINT [FK_OrderReportDocumentTrazability_OrderReport] FOREIGN KEY ([IdOrderReport]) REFERENCES [dbo].[OrderReport] ([Id])
GO