CREATE TABLE [dbo].[ConquestVerificationImage] (
  [Id] [int] IDENTITY,
  [IdConquestVerification] [int] NOT NULL,
  [ImageName] [varchar](256) NOT NULL,
  [ImageUrl] [varchar](512) NULL,
  CONSTRAINT [PK_ConquestVerificationImage] PRIMARY KEY CLUSTERED ([Id]),
  CONSTRAINT [IX_ConquestVerificationImage] UNIQUE ([ImageName] DESC)
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ConquestVerificationImage]
  ADD CONSTRAINT [FK_ConquestVerificationImage_ConquestVerification] FOREIGN KEY ([IdConquestVerification]) REFERENCES [dbo].[ConquestVerification] ([Id])
GO