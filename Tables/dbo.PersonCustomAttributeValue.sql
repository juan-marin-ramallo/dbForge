CREATE TABLE [dbo].[PersonCustomAttributeValue] (
  [Id] [int] IDENTITY,
  [IdPersonCustomAttribute] [int] NOT NULL,
  [Value] [varchar](255) NULL,
  [IdPersonOfInterest] [int] NOT NULL,
  CONSTRAINT [PK__PersonCu__3214EC07A65DED2C] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PersonCustomAttributeValue]
  ADD CONSTRAINT [FK__PersonCus__IdPer__255322C5] FOREIGN KEY ([IdPersonCustomAttribute]) REFERENCES [dbo].[PersonCustomAttribute] ([Id])
GO

ALTER TABLE [dbo].[PersonCustomAttributeValue]
  ADD CONSTRAINT [FK__PersonCus__IdPer__264746FE] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO