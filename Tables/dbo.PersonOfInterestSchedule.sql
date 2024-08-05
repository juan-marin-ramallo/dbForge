CREATE TABLE [dbo].[PersonOfInterestSchedule] (
  [IdPersonOfInterest] [int] NOT NULL,
  [IdDayOfWeek] [smallint] NOT NULL,
  [WorkHours] [time] NOT NULL,
  [RestHours] [time] NULL,
  [FromHour] [time] NULL,
  [ToHour] [time] NULL,
  CONSTRAINT [PK_StockerSchedule] PRIMARY KEY CLUSTERED ([IdPersonOfInterest], [IdDayOfWeek])
)
ON [PRIMARY]
GO