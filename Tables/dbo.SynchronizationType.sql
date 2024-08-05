CREATE TABLE [dbo].[SynchronizationType] (
  [Code] [smallint] NOT NULL,
  [Text] [varchar](128) NOT NULL,
  CONSTRAINT [PK_SynchronizationType] PRIMARY KEY CLUSTERED ([Code])
)
ON [PRIMARY]
GO