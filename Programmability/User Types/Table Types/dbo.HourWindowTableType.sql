CREATE TYPE [dbo].[HourWindowTableType] AS TABLE (
  [Id] [varchar](50) NOT NULL,
  [Day] [smallint] NOT NULL,
  [FromHour] [time] NOT NULL,
  [ToHour] [time] NOT NULL,
  PRIMARY KEY CLUSTERED ([Id], [Day])
)
GO