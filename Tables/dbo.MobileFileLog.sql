CREATE TABLE [dbo].[MobileFileLog] (
  [Id] [int] IDENTITY,
  [Date] [datetime] NOT NULL,
  [IdPersonOfInterest] [int] NOT NULL,
  [IdMobileFileLogType] [smallint] NOT NULL,
  [Name] [varchar](200) NOT NULL,
  [Url] [varchar](5000) NOT NULL,
  CONSTRAINT [PK_MobileFileLog] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[MobileFileLog]
  ADD CONSTRAINT [FK_MobileFileLog_MobileFileLogType] FOREIGN KEY ([IdMobileFileLogType]) REFERENCES [dbo].[MobileFileLogType] ([Id])
GO

ALTER TABLE [dbo].[MobileFileLog]
  ADD CONSTRAINT [FK_MobileFileLog_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO