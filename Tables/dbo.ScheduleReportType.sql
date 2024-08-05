CREATE TABLE [dbo].[ScheduleReportType] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [Order] [int] NOT NULL CONSTRAINT [DF_ScheduleReportType_Order] DEFAULT (1),
  [Enabled] [bit] NOT NULL CONSTRAINT [DF_ScheduleReportType_Deleted] DEFAULT (0),
  CONSTRAINT [PK_ScheduleReportType] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO