CREATE TABLE [dbo].[ScheduleReportDayOfWeek] (
  [Id] [int] IDENTITY,
  [IdScheduleReport] [int] NOT NULL,
  [DayOfWeek] [int] NOT NULL,
  CONSTRAINT [PK_ScheduleReportDayOfWeek] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ScheduleReportDayOfWeek]
  ADD CONSTRAINT [FK_ScheduleReportDayOfWeek_ScheduleReport] FOREIGN KEY ([IdScheduleReport]) REFERENCES [dbo].[ScheduleReport] ([Id])
GO