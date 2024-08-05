CREATE TABLE [dbo].[CustomReportForm] (
  [IdCustomReport] [int] NOT NULL,
  [IdForm] [int] NOT NULL,
  CONSTRAINT [PK_CustomReportForm_1] PRIMARY KEY CLUSTERED ([IdCustomReport], [IdForm])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CustomReportForm]
  ADD CONSTRAINT [FK_CustomReportForm_CustomReport] FOREIGN KEY ([IdCustomReport]) REFERENCES [dbo].[CustomReport] ([Id])
GO

ALTER TABLE [dbo].[CustomReportForm]
  ADD CONSTRAINT [FK_CustomReportForm_Form] FOREIGN KEY ([IdForm]) REFERENCES [dbo].[Form] ([Id])
GO