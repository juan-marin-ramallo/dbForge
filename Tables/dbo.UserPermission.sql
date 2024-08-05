CREATE TABLE [dbo].[UserPermission] (
  [IdUser] [int] NOT NULL,
  [IdPermission] [smallint] NOT NULL,
  [CanView] [bit] NULL,
  [CanEdit] [bit] NULL,
  [CanViewAll] [bit] NULL,
  CONSTRAINT [PK_UserPermission] PRIMARY KEY CLUSTERED ([IdUser], [IdPermission])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[UserPermission] WITH NOCHECK
  ADD CONSTRAINT [FK_UserPermission_Permission] FOREIGN KEY ([IdPermission]) REFERENCES [dbo].[Permission] ([Id])
GO

ALTER TABLE [dbo].[UserPermission]
  ADD CONSTRAINT [FK_UserPermission_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO