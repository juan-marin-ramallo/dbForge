CREATE TABLE [dbo].[PartnerConfiguration] (
  [Id] [int] IDENTITY,
  [Name] [varchar](50) NULL,
  [UrlWeb] [varchar](100) NULL,
  [ImageName] [varchar](100) NULL,
  [ImageEncoded] [varbinary](max) NULL,
  [CreatedDate] [datetime] NULL,
  CONSTRAINT [PK_PartnerConfiguration] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO