CREATE TABLE [dbo].[FiscalizationUser] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [Email] [varchar](255) NULL,
  [Password] [varchar](150) NULL,
  [PasswordRequestedDate] [datetime] NULL,
  [PasswordExpirationDate] [datetime] NULL,
  [CreatedDate] [datetime] NOT NULL,
  [LastLoginDate] [datetime] NULL,
  [LastLoginIp] [varchar](20) NULL,
  CONSTRAINT [PK_FiscalizationUser] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO