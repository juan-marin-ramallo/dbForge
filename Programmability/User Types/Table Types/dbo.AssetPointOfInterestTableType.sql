CREATE TYPE [dbo].[AssetPointOfInterestTableType] AS TABLE (
  [PointOfInterestId] [varchar](50) NOT NULL,
  [AssetId] [varchar](50) NOT NULL,
  PRIMARY KEY CLUSTERED ([PointOfInterestId], [AssetId])
)
GO