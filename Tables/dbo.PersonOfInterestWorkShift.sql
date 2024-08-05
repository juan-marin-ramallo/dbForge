CREATE TABLE [dbo].[PersonOfInterestWorkShift] (
  [IdPersonOfInterest] [int] NOT NULL,
  [IdDayOfWeek] [smallint] NOT NULL,
  [IdWorkShift] [int] NOT NULL,
  [IdRestShift] [int] NULL,
  [AssignedDate] [datetime] NOT NULL,
  [Deleted] [bit] NOT NULL,
  [DeletedDate] [datetime] NULL,
  CONSTRAINT [PK_PersonOfInterestWorkShift] PRIMARY KEY CLUSTERED ([IdPersonOfInterest], [IdDayOfWeek], [IdWorkShift])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PersonOfInterestWorkShift]
  ADD CONSTRAINT [FK_PersonOfInterestWorkShift_DayOfWeek] FOREIGN KEY ([IdDayOfWeek]) REFERENCES [dbo].[DayOfWeek] ([Id])
GO

ALTER TABLE [dbo].[PersonOfInterestWorkShift]
  ADD CONSTRAINT [FK_PersonOfInterestWorkShift_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[PersonOfInterestWorkShift]
  ADD CONSTRAINT [FK_PersonOfInterestWorkShift_WorkShift] FOREIGN KEY ([IdWorkShift]) REFERENCES [dbo].[WorkShift] ([Id])
GO

ALTER TABLE [dbo].[PersonOfInterestWorkShift]
  ADD CONSTRAINT [FK_PersonOfInterestWorkShift_WorkShift_Rest] FOREIGN KEY ([IdRestShift]) REFERENCES [dbo].[WorkShift] ([Id])
GO