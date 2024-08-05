CREATE TABLE [dbo].[UserZone] (
  [IdZone] [int] NOT NULL,
  [IdUser] [int] NOT NULL,
  CONSTRAINT [PK_UserZone] PRIMARY KEY CLUSTERED ([IdZone], [IdUser])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[UserZone] WITH NOCHECK
  ADD CONSTRAINT [FK_UserZone_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO

ALTER TABLE [dbo].[UserZone] WITH NOCHECK
  ADD CONSTRAINT [FK_UserZone_Zone] FOREIGN KEY ([IdZone]) REFERENCES [dbo].[Zone] ([Id])
GO