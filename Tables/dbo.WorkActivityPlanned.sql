CREATE TABLE [dbo].[WorkActivityPlanned] (
  [Id] [int] IDENTITY,
  [WorkPlanId] [int] NOT NULL,
  [WorkActivityTypeId] [int] NOT NULL,
  [PlannedDate] [datetime] NOT NULL,
  [PlannedEndDate] [datetime] NULL,
  [PointOfInterestId] [int] NULL,
  [RouteGroupId] [int] NULL,
  [MeetingId] [int] NULL,
  [Completed] [bit] NOT NULL CONSTRAINT [DF_WorkActivityPlanned_Completed] DEFAULT (0),
  [RoutePointOfInterestId] [int] NULL,
  [WorkActivityId] [int] NULL,
  CONSTRAINT [PK_WorkActivityDone] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[WorkActivityPlanned]
  ADD CONSTRAINT [FK_WorkActivityDone_WorkPlan] FOREIGN KEY ([WorkPlanId]) REFERENCES [dbo].[WorkPlan] ([Id])
GO

ALTER TABLE [dbo].[WorkActivityPlanned]
  ADD CONSTRAINT [FK_WorkActivityPlanned_RouteGroup] FOREIGN KEY ([RouteGroupId]) REFERENCES [dbo].[RouteGroup] ([Id])
GO