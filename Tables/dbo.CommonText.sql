CREATE TABLE [dbo].[CommonText] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  CONSTRAINT [PK_CommonText] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [IX_CommonText_Name]
  ON [dbo].[CommonText] ([Name])
  ON [PRIMARY]
GO