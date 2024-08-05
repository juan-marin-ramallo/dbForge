CREATE TABLE [dbo].[InterestLink] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [Value] [varchar](500) NULL,
  [CreatedDate] [datetime] NULL,
  [IdUser] [int] NOT NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_InterestLink_Deleted] DEFAULT (0),
  CONSTRAINT [PK_InterestLink] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[InterestLink]
  ADD CONSTRAINT [FK_InterestLink_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO