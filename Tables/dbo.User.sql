CREATE TABLE [dbo].[User] (
  [Id] [int] IDENTITY,
  [Name] [varchar](50) NOT NULL,
  [LastName] [varchar](50) NOT NULL,
  [Email] [varchar](255) NOT NULL,
  [UserName] [varchar](50) NOT NULL,
  [Password] [varchar](150) NOT NULL,
  [FirstTimeLogin] [bit] NOT NULL,
  [Type] [int] NULL CONSTRAINT [DF_User_Type] DEFAULT (0),
  [Status] [char](1) NOT NULL,
  [SuperAdmin] [bit] NOT NULL,
  [ChangePassword] [bit] NULL,
  [IdPersonOfInterest] [int] NULL,
  [AppUserStatus] [char](1) NOT NULL CONSTRAINT [DF_User_AppUserStatus] DEFAULT ('D'),
  [CreatedAtKioskMode] [bit] NOT NULL CONSTRAINT [DF_User_CreatedAtKioskMode] DEFAULT (0),
  [MicrosoftAccessToken] [varchar](2048) NULL CONSTRAINT [DF_User_MicrosoftAccessToken] DEFAULT (NULL),
  [MicrosoftAccessTokenExpiration] [datetime] NULL,
  [MicrosoftRefreshToken] [varchar](2048) NULL,
  [MicrosoftCalendarId] [varchar](2048) NULL,
  [LastLoginDate] [datetime] NULL,
  CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([Id]),
  CONSTRAINT [UQ_email_user] UNIQUE ([Email])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[User]
  ADD CONSTRAINT [FK_User_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[User] WITH NOCHECK
  ADD CONSTRAINT [FK_User_Status] FOREIGN KEY ([Status]) REFERENCES [dbo].[Status] ([Code])
GO

ALTER TABLE [dbo].[User]
  ADD CONSTRAINT [FK_User_Status_SupApp] FOREIGN KEY ([AppUserStatus]) REFERENCES [dbo].[Status] ([Code])
GO