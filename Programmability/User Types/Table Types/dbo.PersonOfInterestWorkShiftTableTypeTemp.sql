CREATE TYPE [dbo].[PersonOfInterestWorkShiftTableTypeTemp] AS TABLE (
  [Id] [varchar](50) NOT NULL,
  [IdDayOfWeek] [smallint] NOT NULL,
  [IdWorkShift] [int] NOT NULL,
  [IdRestShift] [int] NULL
)
GO