CREATE TABLE [dbo].[PersonOfInterestWorkShiftModification] (
  [Id] [int] IDENTITY,
  [Date] [datetime] NOT NULL,
  [IdPersonOfInterest] [int] NOT NULL,
  [IdDayOfWeek] [int] NOT NULL,
  [IdCurrentWorkShift] [int] NULL,
  [CurrentWorkShiftStartTime] [time] NULL,
  [CurrentWorkShiftEndTime] [time] NULL,
  [CurrentWorkShiftAssignedDate] [datetime] NULL,
  [IdWorkShiftRecurrenceType] [smallint] NOT NULL,
  [IdNewWorkShift] [int] NULL,
  [NewWorkShiftStartTime] [time] NULL,
  [NewWorkShiftEndTime] [time] NULL,
  [NewWorkShiftAssignedDate] [datetime] NULL,
  [IdWorkShiftRequestor] [smallint] NOT NULL,
  CONSTRAINT [PK_PersonOfInterestWorkShiftModification] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO