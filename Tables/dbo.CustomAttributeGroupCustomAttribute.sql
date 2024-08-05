CREATE TABLE [dbo].[CustomAttributeGroupCustomAttribute] (
  [IdCustomAttributeGroup] [int] NOT NULL,
  [IdCustomAttribute] [int] NOT NULL,
  [Order] [int] NOT NULL,
  CONSTRAINT [PK_CustomAttributeGroupCustomAttribute] PRIMARY KEY CLUSTERED ([IdCustomAttributeGroup], [IdCustomAttribute])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CustomAttributeGroupCustomAttribute]
  ADD CONSTRAINT [FK_CustomAttributeGroupCustomAttribute_CustomAttribute] FOREIGN KEY ([IdCustomAttribute]) REFERENCES [dbo].[CustomAttribute] ([Id])
GO

ALTER TABLE [dbo].[CustomAttributeGroupCustomAttribute]
  ADD CONSTRAINT [FK_CustomAttributeGroupCustomAttribute_CustomAttributeGroup] FOREIGN KEY ([IdCustomAttributeGroup]) REFERENCES [dbo].[CustomAttributeGroup] ([Id])
GO