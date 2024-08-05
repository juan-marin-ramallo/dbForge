CREATE TABLE [dbo].[AssetReportAttribute] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [IdType] [int] NOT NULL,
  [DefaultValue] [varchar](max) NULL,
  [CreatedDate] [datetime] NOT NULL,
  [IdUser] [int] NULL,
  [Enabled] [bit] NOT NULL CONSTRAINT [DF_AssetReportAttribute_Enabled] DEFAULT (1),
  [Deleted] [bit] NOT NULL,
  [Order] [int] NOT NULL,
  [Required] [bit] NOT NULL,
  [DefaultAttribute] [bit] NOT NULL CONSTRAINT [DF_AssetReportAttribute_DefaultAttribute] DEFAULT (0),
  [IdVisibilityType] [smallint] NOT NULL CONSTRAINT [DF_AssetReportAttribute_IdVisibilityType] DEFAULT (1),
  [CanEditRequired] [bit] NOT NULL CONSTRAINT [DF_AssetReportAttribute_CanEditRequired] DEFAULT (1),
  [CanEditVisibility] [bit] NOT NULL CONSTRAINT [DF_AssetReportAttribute_CanEditVisibility] DEFAULT (1),
  CONSTRAINT [PK_AssetReportAttribute] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[AssetReportAttribute]
  ADD CONSTRAINT [FK_AssetReportAttribute_AssetReportAttributeType] FOREIGN KEY ([IdType]) REFERENCES [dbo].[AssetReportAttributeType] ([Id])
GO

ALTER TABLE [dbo].[AssetReportAttribute]
  ADD CONSTRAINT [FK_AssetReportAttribute_AssetReportAttributeVisibilityType] FOREIGN KEY ([IdVisibilityType]) REFERENCES [dbo].[AssetReportAttributeVisibilityType] ([Id])
GO