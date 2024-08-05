CREATE TYPE [dbo].[CustomAttributeTableType] AS TABLE (
  [IdCustomAttribute] [int] NOT NULL,
  [IdPointOfInterest] [int] NOT NULL,
  [Value] [varchar](max) NULL,
  [IdOption] [int] NULL,
  PRIMARY KEY NONCLUSTERED ([IdCustomAttribute], [IdPointOfInterest])
)
GO