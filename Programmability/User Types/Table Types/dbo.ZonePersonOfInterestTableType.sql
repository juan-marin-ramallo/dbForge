CREATE TYPE [dbo].[ZonePersonOfInterestTableType] AS TABLE (
  [PersonOfInterestIdentifier] [varchar](20) NOT NULL,
  PRIMARY KEY CLUSTERED ([PersonOfInterestIdentifier]) WITH (IGNORE_DUP_KEY = ON)
)
GO