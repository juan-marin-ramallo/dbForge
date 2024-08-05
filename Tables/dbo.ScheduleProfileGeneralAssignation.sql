CREATE TABLE [dbo].[ScheduleProfileGeneralAssignation] (
  [Id] [int] IDENTITY,
  [IdScheduleProfile] [int] NULL,
  [IdPersonOfInterestType] [char](1) NULL,
  CONSTRAINT [PK_ScheduleProfileGeneralAssignation] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ScheduleProfileGeneralAssignation]
  ADD CONSTRAINT [FK_ScheduleProfileGeneralAssignation_PersonOfInterestType] FOREIGN KEY ([IdPersonOfInterestType]) REFERENCES [dbo].[PersonOfInterestType] ([Code])
GO

ALTER TABLE [dbo].[ScheduleProfileGeneralAssignation]
  ADD CONSTRAINT [FK_ScheduleProfileGeneralAssignation_ScheduleProfile] FOREIGN KEY ([IdScheduleProfile]) REFERENCES [dbo].[ScheduleProfile] ([Id])
GO