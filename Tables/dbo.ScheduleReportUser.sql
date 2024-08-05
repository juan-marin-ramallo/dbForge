CREATE TABLE [dbo].[ScheduleReportUser] (
  [IdScheduleReport] [int] NOT NULL,
  [IdUser] [int] NOT NULL,
  CONSTRAINT [PK_ScheduleReportUser] PRIMARY KEY CLUSTERED ([IdScheduleReport], [IdUser])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ScheduleReportUser]
  ADD CONSTRAINT [FK_ScheduleReportUser_ScheduleReport] FOREIGN KEY ([IdScheduleReport]) REFERENCES [dbo].[ScheduleReport] ([Id])
GO

ALTER TABLE [dbo].[ScheduleReportUser]
  ADD CONSTRAINT [FK_ScheduleReportUser_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO