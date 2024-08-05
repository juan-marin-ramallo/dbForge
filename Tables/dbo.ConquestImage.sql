CREATE TABLE [dbo].[ConquestImage] (
  [Id] [int] IDENTITY,
  [IdConquest] [int] NOT NULL,
  [ImageName] [varchar](256) NOT NULL,
  [ImageUrl] [varchar](512) NULL,
  CONSTRAINT [PK_ConquestImage] PRIMARY KEY CLUSTERED ([Id]),
  CONSTRAINT [IX_ConquestImage] UNIQUE ([ImageName] DESC)
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ConquestImage]
  ADD CONSTRAINT [FK_ConquestImage_Conquest] FOREIGN KEY ([IdConquest]) REFERENCES [dbo].[Conquest] ([Id])
GO