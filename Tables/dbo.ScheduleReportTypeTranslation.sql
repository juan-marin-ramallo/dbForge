CREATE TABLE [dbo].[ScheduleReportTypeTranslation] (
  [IdScheduleReportType] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Name] [varchar](100) NOT NULL,
  CONSTRAINT [PK_ScheduleReportTypeTranslation] PRIMARY KEY CLUSTERED ([IdScheduleReportType], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ScheduleReportTypeTranslation]
  ADD CONSTRAINT [FK_ScheduleReportTypeTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO

ALTER TABLE [dbo].[ScheduleReportTypeTranslation]
  ADD CONSTRAINT [FK_ScheduleReportTypeTranslation_ScheduleReportType] FOREIGN KEY ([IdScheduleReportType]) REFERENCES [dbo].[ScheduleReportType] ([Id])
GO