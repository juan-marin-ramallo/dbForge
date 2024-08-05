CREATE TABLE [dbo].[ScheduleReportPointOfInterest] (
  [IdScheduleReport] [int] NOT NULL,
  [IdPointOfInterest] [int] NOT NULL,
  CONSTRAINT [PK_ScheduleReportPointOfInterest] PRIMARY KEY CLUSTERED ([IdScheduleReport], [IdPointOfInterest])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ScheduleReportPointOfInterest]
  ADD CONSTRAINT [FK_ScheduleReportPointOfInterest_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO

ALTER TABLE [dbo].[ScheduleReportPointOfInterest]
  ADD CONSTRAINT [FK_ScheduleReportPointOfInterest_ScheduleReport] FOREIGN KEY ([IdScheduleReport]) REFERENCES [dbo].[ScheduleReport] ([Id])
GO