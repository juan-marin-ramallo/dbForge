CREATE TABLE [dbo].[ScheduleProfileAssignation] (
  [Id] [int] IDENTITY,
  [IdPointOfInterest] [int] NULL,
  [IdPersonOfInterest] [int] NULL,
  [IdScheduleProfile] [int] NOT NULL,
  CONSTRAINT [PK_ScheduleProfileAssignation_1] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ScheduleProfileAssignation]
  ADD CONSTRAINT [FK_ScheduleProfileAssignation_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[ScheduleProfileAssignation]
  ADD CONSTRAINT [FK_ScheduleProfileAssignation_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO

ALTER TABLE [dbo].[ScheduleProfileAssignation]
  ADD CONSTRAINT [FK_ScheduleProfileAssignation_ScheduleProfile] FOREIGN KEY ([IdScheduleProfile]) REFERENCES [dbo].[ScheduleProfile] ([Id])
GO