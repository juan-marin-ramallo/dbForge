CREATE TABLE [dbo].[ProductReportAttributeType] (
  [Id] [int] IDENTITY,
  [Description] [varchar](50) NOT NULL,
  [Order] [int] NOT NULL,
  CONSTRAINT [PK_ProductReportCustomAttributeType] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO