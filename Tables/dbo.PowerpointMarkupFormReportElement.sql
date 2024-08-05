CREATE TABLE [dbo].[PowerpointMarkupFormReportElement] (
  [Id] [int] IDENTITY,
  [IdPowerpointMarkupFormReport] [int] NOT NULL,
  [PageIndex] [int] NOT NULL,
  [IdPowerpointMarkupElement] [int] NOT NULL,
  [IdQuestion] [int] NOT NULL,
  [ShowTitle] [bit] NOT NULL,
  CONSTRAINT [PK_PowerpointMarkupFormReportElement] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PowerpointMarkupFormReportElement]
  ADD CONSTRAINT [FK_PowerpointMarkupFormReportElement_PowerpointMarkupElement] FOREIGN KEY ([IdPowerpointMarkupElement]) REFERENCES [dbo].[PowerpointMarkupElement] ([Id])
GO

ALTER TABLE [dbo].[PowerpointMarkupFormReportElement]
  ADD CONSTRAINT [FK_PowerpointMarkupFormReportElement_PowerpointMarkupFormReport] FOREIGN KEY ([IdPowerpointMarkupFormReport]) REFERENCES [dbo].[PowerpointMarkupFormReport] ([Id])
GO

ALTER TABLE [dbo].[PowerpointMarkupFormReportElement]
  ADD CONSTRAINT [FK_PowerpointMarkupFormReportElement_Question] FOREIGN KEY ([IdQuestion]) REFERENCES [dbo].[Question] ([Id])
GO