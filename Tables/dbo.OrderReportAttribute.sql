CREATE TABLE [dbo].[OrderReportAttribute] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NULL,
  [IdType] [int] NOT NULL,
  [DefaultValue] [varchar](max) NULL,
  [CreatedDate] [datetime] NULL,
  [IdUser] [int] NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_OrderReportAttribute_Deleted] DEFAULT (0),
  [Order] [int] NOT NULL,
  [Required] [bit] NOT NULL CONSTRAINT [DF_OrderReportAttribute_Required] DEFAULT (0),
  [Enabled] [bit] NOT NULL CONSTRAINT [DF_OrderReportAttribute_FullDeleted] DEFAULT (0),
  CONSTRAINT [PK_OrderReportAttribute] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[OrderReportAttribute]
  ADD CONSTRAINT [FK_OrderReportAttribute_ProductReportAttributeType] FOREIGN KEY ([IdType]) REFERENCES [dbo].[ProductReportAttributeType] ([Id])
GO

ALTER TABLE [dbo].[OrderReportAttribute]
  ADD CONSTRAINT [FK_OrderReportAttribute_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO