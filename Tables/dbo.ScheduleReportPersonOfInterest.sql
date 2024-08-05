CREATE TABLE [dbo].[ScheduleReportPersonOfInterest] (
  [IdScheduleReport] [int] NOT NULL,
  [IdPersonOfInterest] [int] NOT NULL,
  CONSTRAINT [PK_ScheduleReportPersonOfInterest] PRIMARY KEY CLUSTERED ([IdScheduleReport], [IdPersonOfInterest])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ScheduleReportPersonOfInterest]
  ADD CONSTRAINT [FK_ScheduleReportPersonOfInterest_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[ScheduleReportPersonOfInterest]
  ADD CONSTRAINT [FK_ScheduleReportPersonOfInterest_ScheduleReport] FOREIGN KEY ([IdScheduleReport]) REFERENCES [dbo].[ScheduleReport] ([Id])
GO