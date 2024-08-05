CREATE TABLE [dbo].[EventType] (
  [Code] [varchar](10) NOT NULL,
  [Description] [varchar](250) NOT NULL,
  CONSTRAINT [PK_EventType] PRIMARY KEY CLUSTERED ([Code])
)
ON [PRIMARY]
GO