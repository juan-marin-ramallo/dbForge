CREATE TABLE [dbo].[PlanimetryPointOfInterest] (
  [Id] [int] IDENTITY,
  [IdPlanimetry] [int] NULL,
  [IdPointOfInterest] [int] NULL,
  [Date] [datetime] NULL,
  CONSTRAINT [PK_PlanimetryPointOfInterest] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PlanimetryPointOfInterest]
  ADD CONSTRAINT [FK_PlanimetryPointOfInterest_Planimetry] FOREIGN KEY ([IdPlanimetry]) REFERENCES [dbo].[Planimetry] ([Id])
GO

ALTER TABLE [dbo].[PlanimetryPointOfInterest]
  ADD CONSTRAINT [FK_PlanimetryPointOfInterest_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO