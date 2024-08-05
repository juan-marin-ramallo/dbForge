CREATE TABLE [dbo].[ProductCategory] (
  [Id] [int] IDENTITY,
  [Name] [varchar](50) NULL,
  [Description] [varchar](250) NULL,
  [Deleted] [bit] NOT NULL,
  [CreatedDate] [datetime] NULL,
  [EditedDate] [datetime] NULL,
  [IdUser] [int] NULL,
  [Order] [int] NULL,
  CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductCategory]
  ADD CONSTRAINT [FK_ProductCategory_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO