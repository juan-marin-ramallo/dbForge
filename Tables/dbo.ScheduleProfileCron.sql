CREATE TABLE [dbo].[ScheduleProfileCron] (
  [Id] [int] IDENTITY,
  [CronExpression] [varchar](200) NOT NULL,
  CONSTRAINT [PK__Schedule__3214EC07D36347CC] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO