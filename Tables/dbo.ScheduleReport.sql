CREATE TABLE [dbo].[ScheduleReport] (
  [Id] [int] IDENTITY,
  [DateFrom] [datetime] NOT NULL,
  [DateTo] [datetime] NOT NULL,
  [Name] [varchar](100) NOT NULL,
  [SubjectEmail] [varchar](100) NULL,
  [BodyEmail] [varchar](500) NULL,
  [IdTypeReport] [int] NOT NULL,
  [RecurrenceCondition] [char](1) NOT NULL,
  [RecurrenceNumber] [int] NOT NULL,
  [FileFormat] [int] NULL,
  [SendingHour] [time] NOT NULL,
  [FileLink] [varchar](5000) NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_ScheduleReport_Deleted] DEFAULT (0),
  [IdUser] [int] NULL,
  [CreatedDate] [datetime] NOT NULL,
  [EditedDate] [datetime] NULL,
  [IdForm] [int] NULL,
  [IdPowerpointMarkup] [int] NULL,
  [IdExcelFormat] [int] NULL,
  [IdCustomReport] [int] NULL,
  [MonthDayNumber] [int] NULL,
  [MonthDayPeriodFrom] [int] NULL,
  [MonthDayPeriodTo] [int] NULL,
  [MonthPeriodSentOption] [int] NULL,
  [SendingPeriodFrom] [time] NULL,
  [SendingPeriodTo] [time] NULL,
  [DaySentOption] [int] NULL,
  [WeekSentOption] [int] NULL,
  [WeekDaysToCount] [int] NULL,
  [IdPowerPointStyle] [int] NULL,
  [MonthDayPeriodFromCalendar] [datetime] NULL,
  CONSTRAINT [PK_ScheduleReport] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ScheduleReport]
  ADD CONSTRAINT [FK_ScheduleReport_AvailableFileType] FOREIGN KEY ([FileFormat]) REFERENCES [dbo].[AvailableFileType] ([Id])
GO

ALTER TABLE [dbo].[ScheduleReport]
  ADD CONSTRAINT [FK_ScheduleReport_CustomReport] FOREIGN KEY ([IdCustomReport]) REFERENCES [dbo].[CustomReport] ([Id])
GO

ALTER TABLE [dbo].[ScheduleReport]
  ADD CONSTRAINT [FK_ScheduleReport_Form] FOREIGN KEY ([IdForm]) REFERENCES [dbo].[Form] ([Id])
GO

ALTER TABLE [dbo].[ScheduleReport]
  ADD CONSTRAINT [FK_ScheduleReport_FormReportFormatElement] FOREIGN KEY ([IdExcelFormat]) REFERENCES [dbo].[FormReportFormatElement] ([Id])
GO

ALTER TABLE [dbo].[ScheduleReport]
  ADD CONSTRAINT [FK_ScheduleReport_PowerpointMarkup] FOREIGN KEY ([IdPowerpointMarkup]) REFERENCES [dbo].[PowerpointMarkupFormReport] ([Id])
GO

ALTER TABLE [dbo].[ScheduleReport]
  ADD CONSTRAINT [FK_ScheduleReport_ScheduleReportType] FOREIGN KEY ([IdTypeReport]) REFERENCES [dbo].[ScheduleReportType] ([Id])
GO

ALTER TABLE [dbo].[ScheduleReport]
  ADD CONSTRAINT [FK_ScheduleReport_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO