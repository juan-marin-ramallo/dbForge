CREATE TABLE [dbo].[ProductReportOptions] (
  [Id] [int] IDENTITY,
  [Description] [varchar](100) NULL,
  [Deleted] [bit] NULL,
  CONSTRAINT [PK_ProductReportOptions] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO