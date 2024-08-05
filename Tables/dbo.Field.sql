CREATE TABLE [dbo].[Field] (
  [Id] [int] IDENTITY,
  [Name] [varchar](250) NOT NULL,
  [IdFieldGroup] [int] NOT NULL,
  [ColumnTitle] [varchar](200) NULL,
  [Order] [int] NOT NULL CONSTRAINT [DF_Field_Order] DEFAULT (1),
  [IsDefault] [bit] NOT NULL CONSTRAINT [DF_Field_SelectedByDefault] DEFAULT (1),
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_Field_Deleted] DEFAULT (0),
  [IdCustomAttribute] [int] NULL,
  [IdProductReportAttribute] [int] NULL,
  [FullDeleted] [bit] NOT NULL CONSTRAINT [DF_Field_FullDeleted] DEFAULT (0),
  [IdOrderReportAttribute] [int] NULL,
  [IdAssetReportAttribute] [int] NULL,
  [IsOnlyChileanRegulation] [bit] NOT NULL CONSTRAINT [DF__Field__IsOnlyChi__21187D8D] DEFAULT (0),
  CONSTRAINT [PK_Field] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Field]
  ADD CONSTRAINT [FK_Field_AssetReportAttribute] FOREIGN KEY ([IdAssetReportAttribute]) REFERENCES [dbo].[AssetReportAttribute] ([Id])
GO

ALTER TABLE [dbo].[Field]
  ADD CONSTRAINT [FK_Field_CustomAttribute] FOREIGN KEY ([IdCustomAttribute]) REFERENCES [dbo].[CustomAttribute] ([Id])
GO

ALTER TABLE [dbo].[Field]
  ADD CONSTRAINT [FK_Field_FieldGroup] FOREIGN KEY ([IdFieldGroup]) REFERENCES [dbo].[FieldGroup] ([Id])
GO

ALTER TABLE [dbo].[Field]
  ADD CONSTRAINT [FK_Field_OrderReportAttribute] FOREIGN KEY ([IdOrderReportAttribute]) REFERENCES [dbo].[OrderReportAttribute] ([Id])
GO

ALTER TABLE [dbo].[Field]
  ADD CONSTRAINT [FK_Field_ProductReportAttribute] FOREIGN KEY ([IdProductReportAttribute]) REFERENCES [dbo].[ProductReportAttribute] ([Id])
GO