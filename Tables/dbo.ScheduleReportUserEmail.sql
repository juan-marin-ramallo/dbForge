CREATE TABLE [dbo].[ScheduleReportUserEmail] (
  [Id] [int] IDENTITY,
  [IdScheduleReport] [int] NULL,
  [Email] [varchar](100) NULL,
  CONSTRAINT [PK_ScheduleReportUserEmail] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ScheduleReportUserEmail]
  ADD CONSTRAINT [FK_ScheduleReportUserEmail_ScheduleReport] FOREIGN KEY ([IdScheduleReport]) REFERENCES [dbo].[ScheduleReport] ([Id])
GO