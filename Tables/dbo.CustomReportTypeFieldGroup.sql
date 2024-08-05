CREATE TABLE [dbo].[CustomReportTypeFieldGroup] (
  [IdCustomReportType] [int] NOT NULL,
  [IdFieldGroup] [int] NOT NULL,
  CONSTRAINT [PK_CustomReportTypeFieldGroup] PRIMARY KEY CLUSTERED ([IdCustomReportType], [IdFieldGroup])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CustomReportTypeFieldGroup]
  ADD CONSTRAINT [FK_CustomReportTypeFieldGroup_CustomReportType] FOREIGN KEY ([IdCustomReportType]) REFERENCES [dbo].[CustomReportType] ([Id])
GO

ALTER TABLE [dbo].[CustomReportTypeFieldGroup]
  ADD CONSTRAINT [FK_CustomReportTypeFieldGroup_FieldGroup] FOREIGN KEY ([IdFieldGroup]) REFERENCES [dbo].[FieldGroup] ([Id])
GO