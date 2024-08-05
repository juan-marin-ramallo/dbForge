CREATE TABLE [dbo].[ScheduleProfileDayOfWeek] (
  [Id] [int] IDENTITY,
  [IdScheduleProfile] [int] NOT NULL,
  [DayOfWeek] [int] NOT NULL,
  CONSTRAINT [PK__Schedule__3214EC073B5FC2DA] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO