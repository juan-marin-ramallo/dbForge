CREATE TABLE [dbo].[ScheduleProfileCatalogCron] (
  [Id] [int] IDENTITY,
  [CronExpression] [varchar](200) NOT NULL,
  CONSTRAINT [PK_ScheduleProfileCatalogCron] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO