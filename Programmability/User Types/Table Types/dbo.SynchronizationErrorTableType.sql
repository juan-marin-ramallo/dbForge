﻿CREATE TYPE [dbo].[SynchronizationErrorTableType] AS TABLE (
  [Class] [varchar](32) NOT NULL,
  [Data] [varchar](2048) NOT NULL,
  [ErrorType] [int] NOT NULL
)
GO