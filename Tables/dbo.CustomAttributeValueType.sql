CREATE TABLE [dbo].[CustomAttributeValueType] (
  [Code] [int] NOT NULL,
  [Description] [varchar](50) NOT NULL,
  CONSTRAINT [PK_CustomAttributeValueType] PRIMARY KEY CLUSTERED ([Code])
)
ON [PRIMARY]
GO