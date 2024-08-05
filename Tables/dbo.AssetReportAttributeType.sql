CREATE TABLE [dbo].[AssetReportAttributeType] (
  [Id] [int] NOT NULL,
  [Description] [varchar](50) NOT NULL,
  [Order] [int] NOT NULL,
  CONSTRAINT [PK_AssetReportAttributeType] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO