﻿CREATE TYPE [dbo].[DynamicReferenceTableType] AS TABLE (
  [Dynamic] [varchar](100) NOT NULL,
  [Form] [varchar](100) NOT NULL,
  [StartDate] [datetime] NOT NULL,
  [EndDate] [datetime] NULL,
  [ReferenceName] [varchar](100) NOT NULL
)
GO