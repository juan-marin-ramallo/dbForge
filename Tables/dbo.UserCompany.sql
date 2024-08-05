CREATE TABLE [dbo].[UserCompany] (
  [IdUser] [int] NOT NULL,
  [IdCompany] [int] NOT NULL,
  CONSTRAINT [PK_UserCompany] PRIMARY KEY CLUSTERED ([IdUser], [IdCompany])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[UserCompany]
  ADD CONSTRAINT [FK_UserCompany_Company] FOREIGN KEY ([IdCompany]) REFERENCES [dbo].[Company] ([Id])
GO

ALTER TABLE [dbo].[UserCompany]
  ADD CONSTRAINT [FK_UserCompany_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO