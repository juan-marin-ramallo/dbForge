CREATE TABLE [dbo].[DynamicReferenceCompletedForm] (
  [Id] [int] IDENTITY,
  [IdDynamicCompletedForm] [int] NULL,
  [IdDynamicReference] [int] NULL,
  [IdDynamicReferenceValue] [int] NULL,
  CONSTRAINT [PK__DynamicR__3214EC07672BD912] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[DynamicReferenceCompletedForm]
  ADD CONSTRAINT [FK__DynamicRe__IdDyn__34605C2B] FOREIGN KEY ([IdDynamicCompletedForm]) REFERENCES [dbo].[DynamicCompletedForm] ([Id])
GO

ALTER TABLE [dbo].[DynamicReferenceCompletedForm]
  ADD CONSTRAINT [FK__DynamicRe__IdDyn__35548064] FOREIGN KEY ([IdDynamicReference]) REFERENCES [dbo].[DynamicReference] ([Id])
GO

ALTER TABLE [dbo].[DynamicReferenceCompletedForm]
  ADD CONSTRAINT [FK__DynamicRe__IdDyn__3648A49D] FOREIGN KEY ([IdDynamicReferenceValue]) REFERENCES [dbo].[DynamicReferenceValue] ([Id])
GO