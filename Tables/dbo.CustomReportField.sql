CREATE TABLE [dbo].[CustomReportField] (
  [IdCustomReport] [int] NOT NULL,
  [IdField] [int] NOT NULL,
  CONSTRAINT [PK_CustomReportField] PRIMARY KEY CLUSTERED ([IdCustomReport], [IdField])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CustomReportField]
  ADD CONSTRAINT [FK_CustomReportField_CustomReport] FOREIGN KEY ([IdCustomReport]) REFERENCES [dbo].[CustomReport] ([Id])
GO

ALTER TABLE [dbo].[CustomReportField]
  ADD CONSTRAINT [FK_CustomReportField_Field] FOREIGN KEY ([IdField]) REFERENCES [dbo].[Field] ([Id])
GO