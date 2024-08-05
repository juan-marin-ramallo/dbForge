CREATE TABLE [dbo].[PowerPointMarkupPhotoReportElement] (
  [Id] [int] IDENTITY,
  [IdPowerPointMarkupPhotoReport] [int] NOT NULL,
  [IdPowerPointMarkupElement] [int] NOT NULL,
  [IdPhotoReportExportAttribute] [int] NOT NULL,
  [PageIndex] [int] NOT NULL,
  CONSTRAINT [PK_PowerPointMarkupPhotoReportElement] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PowerPointMarkupPhotoReportElement]
  ADD CONSTRAINT [FK_PowerPointMarkupPhotoReportElement_PhotoReportExportAttribute] FOREIGN KEY ([IdPhotoReportExportAttribute]) REFERENCES [dbo].[PhotoReportExportAttribute] ([Id])
GO

ALTER TABLE [dbo].[PowerPointMarkupPhotoReportElement]
  ADD CONSTRAINT [FK_PowerPointMarkupPhotoReportElement_PowerpointMarkupElement] FOREIGN KEY ([IdPowerPointMarkupElement]) REFERENCES [dbo].[PowerpointMarkupElement] ([Id])
GO

ALTER TABLE [dbo].[PowerPointMarkupPhotoReportElement]
  ADD CONSTRAINT [FK_PowerPointMarkupPhotoReportElement_PowerPointMarkupPhotoReport] FOREIGN KEY ([IdPowerPointMarkupPhotoReport]) REFERENCES [dbo].[PowerPointMarkupPhotoReport] ([Id])
GO