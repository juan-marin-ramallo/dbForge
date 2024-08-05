CREATE TABLE [dbo].[ScheduleProfileCatalogDayOfWeek] (
  [Id] [int] IDENTITY,
  [IdScheduleProfileCatalog] [int] NOT NULL,
  [DayOfWeek] [int] NOT NULL,
  CONSTRAINT [PK_ScheduleProfileCatalogDayOfWeek] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ScheduleProfileCatalogDayOfWeek]
  ADD CONSTRAINT [FK_ScheduleProfileCatalogDayOfWeek_ScheduleProfileCatalog] FOREIGN KEY ([IdScheduleProfileCatalog]) REFERENCES [dbo].[ScheduleProfileCatalog] ([Id])
GO