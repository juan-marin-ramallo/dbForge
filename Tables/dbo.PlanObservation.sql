CREATE TABLE [dbo].[PlanObservation] (
  [Id] [int] IDENTITY,
  [IdWorkPlan] [int] NOT NULL,
  [CreatedDate] [datetime] NOT NULL,
  [Observation] [varchar](250) NOT NULL,
  CONSTRAINT [PK_PlanObservation] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PlanObservation]
  ADD CONSTRAINT [FK_PlanObservation_WorkPlan] FOREIGN KEY ([IdWorkPlan]) REFERENCES [dbo].[WorkPlan] ([Id])
GO