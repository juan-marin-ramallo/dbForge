CREATE TABLE [dbo].[ConquestVerification] (
  [Id] [int] IDENTITY,
  [IdConquest] [int] NOT NULL,
  [IdPersonOfInterest] [int] NULL,
  [IdUser] [int] NULL,
  [Description] [varchar](250) NULL,
  [Date] [datetime] NOT NULL,
  [IsVerified] [bit] NOT NULL,
  [CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_ConquestVerification_CreatedDate] DEFAULT (getutcdate()),
  CONSTRAINT [PK_ConquestVerifications] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ConquestVerification]
  ADD CONSTRAINT [FK_ConquestVerification_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[ConquestVerification]
  ADD CONSTRAINT [FK_ConquestVerification_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO

ALTER TABLE [dbo].[ConquestVerification]
  ADD CONSTRAINT [FK_ConquestVerifications_Conquests] FOREIGN KEY ([IdConquest]) REFERENCES [dbo].[Conquest] ([Id])
GO