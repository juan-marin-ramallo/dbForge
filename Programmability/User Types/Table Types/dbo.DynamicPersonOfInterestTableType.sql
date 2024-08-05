CREATE TYPE [dbo].[DynamicPersonOfInterestTableType] AS TABLE (
  [PersonOfInterestIdentifier] [varchar](20) NOT NULL,
  [Dynamic] [varchar](100) NOT NULL
)
GO