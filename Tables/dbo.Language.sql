CREATE TABLE [dbo].[Language] (
  [Id] [int] IDENTITY,
  [Code] [varchar](5) NOT NULL,
  [Name] [varchar](50) NOT NULL,
  [Selected] [bit] NOT NULL,
  CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO