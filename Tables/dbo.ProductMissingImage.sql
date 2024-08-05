CREATE TABLE [dbo].[ProductMissingImage] (
  [Id] [int] IDENTITY,
  [IdProductMissing] [int] NOT NULL,
  [ImageUrl] [varchar](512) NULL,
  [ImageName] [varchar](256) NOT NULL,
  [ImageRecognitionUrl] [varchar](1000) NULL,
  CONSTRAINT [PK_ProductMissingImage] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductMissingImage]
  ADD CONSTRAINT [FK_ProductMissingImage_IdProductMissing_ProductMissingPointOfInterest_Id] FOREIGN KEY ([IdProductMissing]) REFERENCES [dbo].[ProductMissingPointOfInterest] ([Id])
GO