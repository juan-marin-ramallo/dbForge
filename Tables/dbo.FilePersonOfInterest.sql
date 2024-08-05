CREATE TABLE [dbo].[FilePersonOfInterest] (
  [Id] [int] IDENTITY,
  [IdFile] [int] NOT NULL,
  [IdPersonOfInterest] [int] NOT NULL,
  [Received] [bit] NOT NULL,
  [ReceivedDate] [datetime] NULL,
  [Read] [bit] NOT NULL,
  [ReadDate] [datetime] NULL,
  CONSTRAINT [PK_DocumentPersonOfInterest] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[FilePersonOfInterest]
  ADD CONSTRAINT [FK_DocumentPersonOfInterest_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[FilePersonOfInterest]
  ADD CONSTRAINT [FK_FilePersonOfInterest_File] FOREIGN KEY ([IdFile]) REFERENCES [dbo].[File] ([Id])
GO