CREATE TABLE [dbo].[ScheduleReportTypeFile] (
  [IdScheduleReportType] [int] NOT NULL,
  [IdFileType] [int] NOT NULL,
  CONSTRAINT [PK_ScheduleReportTypeFile] PRIMARY KEY CLUSTERED ([IdScheduleReportType], [IdFileType])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ScheduleReportTypeFile]
  ADD CONSTRAINT [FK_ScheduleReportTypeFile_AvailableFileType] FOREIGN KEY ([IdFileType]) REFERENCES [dbo].[AvailableFileType] ([Id])
GO

ALTER TABLE [dbo].[ScheduleReportTypeFile]
  ADD CONSTRAINT [FK_ScheduleReportTypeFile_ScheduleReportType] FOREIGN KEY ([IdScheduleReportType]) REFERENCES [dbo].[ScheduleReportType] ([Id])
GO