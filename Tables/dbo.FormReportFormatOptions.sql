CREATE TABLE [dbo].[FormReportFormatOptions] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [IdCustomAttribute] [int] NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_FormReportFormatOptions_Deleted] DEFAULT (0),
  CONSTRAINT [PK_FormReportFormatOptions] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[FormReportFormatOptions]
  ADD CONSTRAINT [FK_FormReportFormatOptions_FormReportFormatOptions] FOREIGN KEY ([IdCustomAttribute]) REFERENCES [dbo].[CustomAttribute] ([Id])
GO