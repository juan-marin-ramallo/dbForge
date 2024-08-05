CREATE TABLE [dbo].[PointOfInterestMarkTypeTranslation] (
  [CodePointOfInterestMarkType] [varchar](5) NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Description] [varchar](50) NOT NULL,
  CONSTRAINT [PK_PointOfInterestMarkTypeTranslation] PRIMARY KEY CLUSTERED ([CodePointOfInterestMarkType], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PointOfInterestMarkTypeTranslation]
  ADD CONSTRAINT [FK_PointOfInterestMarkTypeTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO

ALTER TABLE [dbo].[PointOfInterestMarkTypeTranslation]
  ADD CONSTRAINT [FK_PointOfInterestMarkTypeTranslation_PointOfInterestMarkType] FOREIGN KEY ([CodePointOfInterestMarkType]) REFERENCES [dbo].[PointOfInterestMarkType] ([Code])
GO