CREATE TABLE [dbo].[PersonOfInterestType] (
  [Code] [char](1) NOT NULL,
  [Description] [varchar](20) NOT NULL,
  [IdTimeZone] [varchar](50) NULL,
  CONSTRAINT [PK_StockerType] PRIMARY KEY CLUSTERED ([Code])
)
ON [PRIMARY]
GO