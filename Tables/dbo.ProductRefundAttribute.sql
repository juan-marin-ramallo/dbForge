CREATE TABLE [dbo].[ProductRefundAttribute] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NULL,
  [IdType] [int] NULL,
  [CreatedDate] [datetime] NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_ProductRefundAttribute_Deleted] DEFAULT (0),
  [Order] [int] NULL,
  [Required] [bit] NULL,
  [DefaultValue] [varchar](500) NULL,
  [IdUser] [int] NULL,
  [FullDeleted] [bit] NOT NULL CONSTRAINT [DF_ProductRefundAttribute_FullDeleted] DEFAULT (0),
  CONSTRAINT [PK_ProductRefundAttribute] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductRefundAttribute]
  ADD CONSTRAINT [FK_ProductRefundAttribute_ProductReportAttributeType] FOREIGN KEY ([IdType]) REFERENCES [dbo].[ProductReportAttributeType] ([Id])
GO

ALTER TABLE [dbo].[ProductRefundAttribute]
  ADD CONSTRAINT [FK_ProductRefundAttribute_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO