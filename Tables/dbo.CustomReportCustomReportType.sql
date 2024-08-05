CREATE TABLE [dbo].[CustomReportCustomReportType] (
  [Id] [int] IDENTITY,
  [IdCustomReport] [int] NOT NULL,
  [IdCustomReportType] [int] NOT NULL,
  [IdForm] [int] NULL,
  CONSTRAINT [PK_CustomReportCustomReportType_1] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CustomReportCustomReportType]
  ADD CONSTRAINT [FK_CustomReportCustomReportType_CustomReport] FOREIGN KEY ([IdCustomReport]) REFERENCES [dbo].[CustomReport] ([Id])
GO

ALTER TABLE [dbo].[CustomReportCustomReportType]
  ADD CONSTRAINT [FK_CustomReportCustomReportType_CustomReportType] FOREIGN KEY ([IdCustomReportType]) REFERENCES [dbo].[CustomReportType] ([Id])
GO

ALTER TABLE [dbo].[CustomReportCustomReportType]
  ADD CONSTRAINT [FK_CustomReportCustomReportType_Form] FOREIGN KEY ([IdForm]) REFERENCES [dbo].[Form] ([Id])
GO