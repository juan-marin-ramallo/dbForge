CREATE TABLE [dbo].[ScheduleProfileProductSection] (
  [IdScheduleProfile] [int] NOT NULL,
  [IdProductReportSection] [int] NOT NULL,
  CONSTRAINT [PK_ScheduleProfileProductSection] PRIMARY KEY CLUSTERED ([IdScheduleProfile], [IdProductReportSection])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ScheduleProfileProductSection]
  ADD CONSTRAINT [FK_ScheduleProfileProductSection_ProductReportSection] FOREIGN KEY ([IdProductReportSection]) REFERENCES [dbo].[ProductReportSection] ([Id])
GO

ALTER TABLE [dbo].[ScheduleProfileProductSection]
  ADD CONSTRAINT [FK_ScheduleProfileProductSection_ScheduleProfile] FOREIGN KEY ([IdScheduleProfile]) REFERENCES [dbo].[ScheduleProfile] ([Id])
GO