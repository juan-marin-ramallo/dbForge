﻿CREATE TYPE [dbo].[PersonOfInterestWorkShiftTableType] AS TABLE (
  [Id] [varchar](50) NOT NULL,
  [IdDayOfWeek] [smallint] NOT NULL,
  [WorkShift] [varchar](100) NOT NULL,
  [RestShift] [varchar](100) NULL
)
GO