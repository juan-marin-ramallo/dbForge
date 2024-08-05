CREATE TABLE [dbo].[UserType] (
  [Id] [int] IDENTITY,
  [Description] [varchar](100) NOT NULL,
  CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO