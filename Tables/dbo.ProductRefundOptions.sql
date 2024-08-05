CREATE TABLE [dbo].[ProductRefundOptions] (
  [Id] [int] IDENTITY,
  [Description] [varchar](100) NULL,
  [CreatedDate] [datetime] NULL,
  [IdUser] [int] NULL,
  [Deleted] [bit] NULL,
  [EditedDate] [datetime] NULL,
  CONSTRAINT [PK_ProductRefundOptions] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductRefundOptions]
  ADD CONSTRAINT [FK_ProductRefundOptions_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO