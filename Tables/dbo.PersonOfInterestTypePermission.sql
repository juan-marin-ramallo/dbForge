CREATE TABLE [dbo].[PersonOfInterestTypePermission] (
  [CodePersonOfInterestType] [char](1) NOT NULL,
  [IdPersonOfInterestPermission] [int] NOT NULL,
  CONSTRAINT [PK_PersonOfInterestTypePermission] PRIMARY KEY CLUSTERED ([CodePersonOfInterestType], [IdPersonOfInterestPermission])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PersonOfInterestTypePermission]
  ADD CONSTRAINT [FK_PersonOfInterestTypePermission_PersonOfInterestPermission] FOREIGN KEY ([IdPersonOfInterestPermission]) REFERENCES [dbo].[PersonOfInterestPermission] ([Id])
GO

ALTER TABLE [dbo].[PersonOfInterestTypePermission] WITH NOCHECK
  ADD CONSTRAINT [FK_PersonOfInterestTypePermission_PersonOfInterestType] FOREIGN KEY ([CodePersonOfInterestType]) REFERENCES [dbo].[PersonOfInterestType] ([Code])
GO