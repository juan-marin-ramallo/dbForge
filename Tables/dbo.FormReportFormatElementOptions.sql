CREATE TABLE [dbo].[FormReportFormatElementOptions] (
  [Id] [int] IDENTITY,
  [IdFormatElement] [int] NULL,
  [IdFormatOptions] [int] NULL,
  CONSTRAINT [PK_FormReportFormatElementOptions] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[FormReportFormatElementOptions]
  ADD CONSTRAINT [FK_FormReportFormatElementOptions_FormReportFormatElement] FOREIGN KEY ([IdFormatElement]) REFERENCES [dbo].[FormReportFormatElement] ([Id])
GO

ALTER TABLE [dbo].[FormReportFormatElementOptions]
  ADD CONSTRAINT [FK_FormReportFormatElementOptions_FormReportFormatOptions] FOREIGN KEY ([IdFormatOptions]) REFERENCES [dbo].[FormReportFormatOptions] ([Id])
GO