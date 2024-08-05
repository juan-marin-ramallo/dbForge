CREATE TABLE [dbo].[UserSupervisorAppPermission] (
  [IdUser] [int] NOT NULL,
  [IdSupervisorAppPermission] [int] NOT NULL,
  CONSTRAINT [PK_UserSupervisorAppPermission] PRIMARY KEY CLUSTERED ([IdUser], [IdSupervisorAppPermission])
)
ON [PRIMARY]
GO