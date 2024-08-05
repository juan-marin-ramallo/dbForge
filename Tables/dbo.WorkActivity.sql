CREATE TABLE [dbo].[WorkActivity] (
  [Id] [int] IDENTITY,
  [WorkPlanId] [int] NOT NULL,
  [WorkActivityTypeId] [int] NOT NULL,
  [ActivityDate] [datetime] NOT NULL,
  [ActivityEndDate] [datetime] NULL,
  [PointOfInterestId] [int] NULL,
  [RouteGroupId] [int] NULL,
  [MeetingId] [int] NULL,
  [Deleted] [bit] NOT NULL,
  [Confirmed] [bit] NOT NULL,
  [RoutePointOfInterestId] [int] NULL,
  [MicrosoftEventId] [varchar](2048) NULL CONSTRAINT [DF_WorkActivity_MicrosoftEventId] DEFAULT (NULL),
  [Synced] [bit] NULL,
  [SyncType] [smallint] NULL,
  [Description] [varchar](2048) NULL CONSTRAINT [DF_WorkActivity_Goal] DEFAULT (NULL),
  CONSTRAINT [PK_WorkActivity] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[WorkActivity]
  ADD CONSTRAINT [FK_WorkActivity_Meeting] FOREIGN KEY ([MeetingId]) REFERENCES [dbo].[Meeting] ([Id])
GO

ALTER TABLE [dbo].[WorkActivity]
  ADD CONSTRAINT [FK_WorkActivity_RouteGroup] FOREIGN KEY ([RouteGroupId]) REFERENCES [dbo].[RouteGroup] ([Id])
GO

ALTER TABLE [dbo].[WorkActivity]
  ADD CONSTRAINT [FK_WorkActivity_WorkPlan] FOREIGN KEY ([WorkPlanId]) REFERENCES [dbo].[WorkPlan] ([Id])
GO