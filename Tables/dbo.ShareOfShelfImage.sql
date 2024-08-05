CREATE TABLE [dbo].[ShareOfShelfImage] (
  [Id] [int] IDENTITY,
  [IdShareOfShelf] [int] NOT NULL,
  [ImageUrl] [varchar](512) NULL,
  [ImageName] [varchar](256) NOT NULL,
  [ImageRecognitionUrl] [varchar](1000) NULL,
  CONSTRAINT [PK_ShareOfShelfImage] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ShareOfShelfImage]
  ADD CONSTRAINT [FK_ShareOfShelfImage_ShareOfShelfReport] FOREIGN KEY ([IdShareOfShelf]) REFERENCES [dbo].[ShareOfShelfReport] ([Id])
GO