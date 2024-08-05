CREATE TABLE [dbo].[ScheduleProfilePermission] (
  [IdScheduleProfile] [int] NOT NULL,
  [IdPersonOfInterestPermission] [int] NOT NULL,
  [LimitOnlyOnce] [bit] NOT NULL CONSTRAINT [DF_ScheduleProfilePermission_LimitOnlyOnce] DEFAULT (0),
  CONSTRAINT [PK_ScheduleProfilePermission] PRIMARY KEY CLUSTERED ([IdScheduleProfile], [IdPersonOfInterestPermission])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ScheduleProfilePermission]
  ADD CONSTRAINT [FK_ScheduleProfilePermission_PersonOfInterestPermission] FOREIGN KEY ([IdPersonOfInterestPermission]) REFERENCES [dbo].[PersonOfInterestPermission] ([Id])
GO

ALTER TABLE [dbo].[ScheduleProfilePermission]
  ADD CONSTRAINT [FK_ScheduleProfilePermission_ScheduleProfile] FOREIGN KEY ([IdScheduleProfile]) REFERENCES [dbo].[ScheduleProfile] ([Id])
GO