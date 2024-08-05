CREATE TABLE [dbo].[DynamicReferenceValue] (
  [Id] [int] IDENTITY,
  [IdDynamicReference] [int] NOT NULL,
  [IdDynamicProductPointOfInterest] [int] NOT NULL,
  [Value] [varchar](1000) NOT NULL,
  [Deleted] [bit] NOT NULL,
  CONSTRAINT [PK_DynamicReferenceValue] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[DynamicReferenceValue]
  ADD CONSTRAINT [FK_DynamicReferenceValue_DynamicProductPointOfInterest] FOREIGN KEY ([IdDynamicProductPointOfInterest]) REFERENCES [dbo].[DynamicProductPointOfInterest] ([Id])
GO

ALTER TABLE [dbo].[DynamicReferenceValue]
  ADD CONSTRAINT [FK_DynamicReferenceValue_DynamicReference] FOREIGN KEY ([IdDynamicReference]) REFERENCES [dbo].[DynamicReference] ([Id])
GO