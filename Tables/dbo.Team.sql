CREATE TABLE [dbo].[Team] (
  [Id] [int] IDENTITY,
  [Description] [varchar](50) NOT NULL,
  CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO