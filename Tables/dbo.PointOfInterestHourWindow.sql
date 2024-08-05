CREATE TABLE [dbo].[PointOfInterestHourWindow] (
  [IdPointOfInterest] [int] NOT NULL,
  [IdDayOfWeek] [smallint] NOT NULL,
  [FromHour] [time] NOT NULL,
  [ToHour] [time] NOT NULL,
  CONSTRAINT [PK_PointOfInterestHourWindow] PRIMARY KEY CLUSTERED ([IdPointOfInterest], [IdDayOfWeek])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PointOfInterestHourWindow] WITH NOCHECK
  ADD CONSTRAINT [FK_PointOfInterestHourWindow_DayOfWeek] FOREIGN KEY ([IdDayOfWeek]) REFERENCES [dbo].[DayOfWeek] ([Id])
GO

ALTER TABLE [dbo].[PointOfInterestHourWindow] WITH NOCHECK
  ADD CONSTRAINT [FK_PointOfInterestHourWindow_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO