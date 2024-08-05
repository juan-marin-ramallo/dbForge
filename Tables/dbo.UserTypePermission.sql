CREATE TABLE [dbo].[UserTypePermission] (
  [IdUserType] [int] NOT NULL,
  [IdPermission] [smallint] NOT NULL,
  [View] [bit] NULL,
  [Edit] [bit] NULL,
  [ViewAll] [bit] NULL,
  CONSTRAINT [PK_UserTypePermission] PRIMARY KEY CLUSTERED ([IdUserType], [IdPermission])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[UserTypePermission]
  ADD CONSTRAINT [FK_UserTypePermission_Permission] FOREIGN KEY ([IdPermission]) REFERENCES [dbo].[Permission] ([Id])
GO

ALTER TABLE [dbo].[UserTypePermission]
  ADD CONSTRAINT [FK_UserTypePermission_UserType] FOREIGN KEY ([IdUserType]) REFERENCES [dbo].[UserType] ([Id])
GO