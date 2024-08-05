CREATE TABLE [dbo].[ProductDynamicAttribute] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [Description] [varchar](250) NULL,
  [EditedDate] [datetime] NULL,
  [IdUser] [int] NULL,
  [Disabled] [bit] NOT NULL CONSTRAINT [DF_ProductDynamicAttribute_Deleted] DEFAULT (0),
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_ProductDynamicAttribute_FullDeleted] DEFAULT (0),
  [IdValueType] [int] NULL,
  [ColumnName] [varchar](50) NULL,
  CONSTRAINT [PK_ProductDynamicAttribute] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductDynamicAttribute]
  ADD CONSTRAINT [FK_ProductDynamicAttribute_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO