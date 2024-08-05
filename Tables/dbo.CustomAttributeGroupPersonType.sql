CREATE TABLE [dbo].[CustomAttributeGroupPersonType] (
  [IdCustomAttributeGroup] [int] NOT NULL,
  [PersonOfInterestType] [char](1) NOT NULL,
  [Order] [int] NOT NULL,
  CONSTRAINT [PK_CustomAttributeGroupPersonType] PRIMARY KEY CLUSTERED ([IdCustomAttributeGroup], [PersonOfInterestType])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CustomAttributeGroupPersonType]
  ADD CONSTRAINT [FK_CustomAttributeGroupPersonType_CustomAttributeGroup] FOREIGN KEY ([IdCustomAttributeGroup]) REFERENCES [dbo].[CustomAttributeGroup] ([Id])
GO

ALTER TABLE [dbo].[CustomAttributeGroupPersonType]
  ADD CONSTRAINT [FK_CustomAttributeGroupPersonType_PersonOfInterestType] FOREIGN KEY ([PersonOfInterestType]) REFERENCES [dbo].[PersonOfInterestType] ([Code])
GO