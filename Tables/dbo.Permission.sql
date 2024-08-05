CREATE TABLE [dbo].[Permission] (
  [Id] [smallint] NOT NULL,
  [Description] [varchar](100) NOT NULL,
  [Order] [smallint] NOT NULL CONSTRAINT [DF_Permission_Order] DEFAULT (0),
  [Enabled] [bit] NOT NULL,
  [ViewEditEnabled] [bit] NOT NULL,
  [ViewAllEnabled] [bit] NOT NULL,
  [ForUsersWithPerson] [bit] NOT NULL CONSTRAINT [DF_Permission_ForUsersWithPerson] DEFAULT (0),
  CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO