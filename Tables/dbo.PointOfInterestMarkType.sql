CREATE TABLE [dbo].[PointOfInterestMarkType] (
  [Code] [varchar](5) NOT NULL,
  [Description] [varchar](50) NOT NULL,
  CONSTRAINT [PK_PointOfInterestMarkType] PRIMARY KEY CLUSTERED ([Code])
)
ON [PRIMARY]
GO