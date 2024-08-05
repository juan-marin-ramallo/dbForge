﻿CREATE TYPE [dbo].[AgrupationTableType] AS TABLE (
  [Id] [varchar](18) NOT NULL,
  [Name] [varchar](100) NOT NULL,
  [Society] [varchar](4) NULL,
  [GroupId] [varchar](18) NULL,
  PRIMARY KEY NONCLUSTERED ([Id])
)
GO