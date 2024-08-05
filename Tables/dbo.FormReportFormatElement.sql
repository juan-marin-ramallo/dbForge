CREATE TABLE [dbo].[FormReportFormatElement] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NULL,
  [CreatedDate] [datetime] NULL,
  CONSTRAINT [PK_FormReportFormatElement] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO