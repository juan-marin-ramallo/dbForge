CREATE TABLE [dbo].[CustomAttributeValue] (
  [Id] [int] IDENTITY,
  [Value] [varchar](max) NULL,
  [IdCustomAttribute] [int] NOT NULL,
  [IdPointOfInterest] [int] NOT NULL,
  [IdCustomAttributeOption] [int] NULL,
  CONSTRAINT [PK_CustomAttributeValue] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [NCL_IX_CustomAttributeValue_IdPointOfInterest]
  ON [dbo].[CustomAttributeValue] ([IdPointOfInterest])
  INCLUDE ([IdCustomAttribute], [Value])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[CustomAttributeValue]
  ADD CONSTRAINT [FK_CustomAttributeValue_CustomAttribute] FOREIGN KEY ([IdCustomAttribute]) REFERENCES [dbo].[CustomAttribute] ([Id])
GO

ALTER TABLE [dbo].[CustomAttributeValue]
  ADD CONSTRAINT [FK_CustomAttributeValue_CustomAttributeOption] FOREIGN KEY ([IdCustomAttributeOption]) REFERENCES [dbo].[CustomAttributeOption] ([Id])
GO

ALTER TABLE [dbo].[CustomAttributeValue]
  ADD CONSTRAINT [FK_CustomAttributeValue_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO