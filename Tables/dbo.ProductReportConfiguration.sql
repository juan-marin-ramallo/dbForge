CREATE TABLE [dbo].[ProductReportConfiguration] (
  [Id] [int] IDENTITY,
  [Name] [varchar](50) NOT NULL,
  [ShowInProductReport] [bit] NOT NULL CONSTRAINT [DF_ProductReportConfiguration_ShowInProductReport] DEFAULT (1),
  [Order] [int] NOT NULL,
  CONSTRAINT [PK_ProductReportConfiguration] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO