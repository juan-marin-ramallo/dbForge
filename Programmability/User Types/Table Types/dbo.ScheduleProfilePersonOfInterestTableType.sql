CREATE TYPE [dbo].[ScheduleProfilePersonOfInterestTableType] AS TABLE (
  [ScheduleProfileDescription] [varchar](200) NOT NULL,
  [Filter] [varchar](20) NOT NULL,
  [Value] [varchar](200) NOT NULL
)
GO