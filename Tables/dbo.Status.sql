CREATE TABLE [dbo].[Status] (
  [Code] [char](1) NOT NULL,
  [Description] [varchar](100) NOT NULL,
  CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED ([Code])
)
ON [PRIMARY]
GO