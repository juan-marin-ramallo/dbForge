CREATE TABLE [dbo].[UserDepartment] (
  [IdUser] [int] NOT NULL,
  [IdDepartment] [int] NOT NULL,
  CONSTRAINT [PK_UserDepartment] PRIMARY KEY CLUSTERED ([IdUser], [IdDepartment])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[UserDepartment] WITH NOCHECK
  ADD CONSTRAINT [FK_UserDepartment_Department] FOREIGN KEY ([IdDepartment]) REFERENCES [dbo].[Department] ([Id])
GO

ALTER TABLE [dbo].[UserDepartment] WITH NOCHECK
  ADD CONSTRAINT [FK_UserDepartment_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO