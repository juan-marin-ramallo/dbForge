CREATE TABLE [dbo].[ScheduleProfileCatalog] (
  [Id] [int] IDENTITY,
  [IdScheduleProfile] [int] NOT NULL,
  [IdCatalog] [int] NOT NULL,
  [IdScheduleProfileCatalogCron] [int] NOT NULL,
  [Comment] [varchar](250) NULL,
  [Deleted] [bit] NOT NULL,
  [RecurrenceCondition] [char](1) NULL,
  [RecurrenceNumber] [int] NULL,
  CONSTRAINT [PK_ScheduleProfileCatalog] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ScheduleProfileCatalog]
  ADD CONSTRAINT [FK_ScheduleProfileCatalog_Catalog] FOREIGN KEY ([IdCatalog]) REFERENCES [dbo].[Catalog] ([Id])
GO

ALTER TABLE [dbo].[ScheduleProfileCatalog]
  ADD CONSTRAINT [FK_ScheduleProfileCatalog_ScheduleProfile] FOREIGN KEY ([IdScheduleProfile]) REFERENCES [dbo].[ScheduleProfile] ([Id])
GO

ALTER TABLE [dbo].[ScheduleProfileCatalog]
  ADD CONSTRAINT [FK_ScheduleProfileCatalog_ScheduleProfileCatalogCron] FOREIGN KEY ([IdScheduleProfileCatalogCron]) REFERENCES [dbo].[ScheduleProfileCatalogCron] ([Id])
GO