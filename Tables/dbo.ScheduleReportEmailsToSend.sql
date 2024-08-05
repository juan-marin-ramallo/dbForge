CREATE TABLE [dbo].[ScheduleReportEmailsToSend] (
  [Id] [int] IDENTITY,
  [IdScheduleReport] [int] NOT NULL,
  [DateFrom] [datetime] NOT NULL,
  [DateTo] [datetime] NOT NULL,
  [EmailSendDateTime] [datetime] NOT NULL,
  [Sent] [bit] NOT NULL CONSTRAINT [DF_ScheduleReportEmailsToSend_Sent] DEFAULT (0),
  [SendingAttempts] [int] NOT NULL CONSTRAINT [DF_ScheduleReportEmailsToSend_SendingAttempts] DEFAULT (0),
  [LastTryAttempt] [datetime] NULL,
  CONSTRAINT [PK_ScheduleReportEmailsToSend] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ScheduleReportEmailsToSend]
  ADD CONSTRAINT [FK_ScheduleReportEmailsToSend_ScheduleReport] FOREIGN KEY ([IdScheduleReport]) REFERENCES [dbo].[ScheduleReport] ([Id])
GO