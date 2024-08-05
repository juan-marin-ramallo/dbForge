CREATE TYPE [dbo].[PersonOfInterestScheduleTableType] AS TABLE (
  [Id] [varchar](50) NOT NULL,
  [Day] [smallint] NOT NULL,
  [WorkHours] [time] NOT NULL,
  [FromHour] [time] NOT NULL,
  [ToHour] [time] NOT NULL,
  [RestHour] [time] NULL,
  PRIMARY KEY CLUSTERED ([Id], [Day])
)
GO