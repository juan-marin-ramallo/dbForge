CREATE TABLE [dbo].[ProductReportAttribute] (
  [Id] [int] IDENTITY,
  [IdProductReportSection] [int] NULL,
  [Name] [varchar](250) NULL,
  [IdType] [int] NOT NULL,
  [DefaultValue] [varchar](max) NULL,
  [CreatedDate] [datetime] NULL,
  [IdUser] [int] NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_ProductReportCustomAttribute_Deleted] DEFAULT (0),
  [Order] [int] NOT NULL,
  [Required] [bit] NOT NULL CONSTRAINT [DF_ProductReportAttribute_Required] DEFAULT (0),
  [FullDeleted] [bit] NOT NULL CONSTRAINT [DF_ProductReportAttribute_FullDeleted] DEFAULT (0),
  [IsStar] [bit] NOT NULL CONSTRAINT [DF_ProductReportAttribute_IsStar] DEFAULT (0),
  CONSTRAINT [PK_ProductReportCustomAttribute] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductReportAttribute]
  ADD CONSTRAINT [FK_ProductReportAttribute_ProductReportAttributeType] FOREIGN KEY ([IdType]) REFERENCES [dbo].[ProductReportAttributeType] ([Id])
GO

ALTER TABLE [dbo].[ProductReportAttribute]
  ADD CONSTRAINT [FK_ProductReportAttribute_ProductReportSection] FOREIGN KEY ([IdProductReportSection]) REFERENCES [dbo].[ProductReportSection] ([Id])
GO

ALTER TABLE [dbo].[ProductReportAttribute]
  ADD CONSTRAINT [FK_ProductReportAttribute_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO