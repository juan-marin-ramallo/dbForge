CREATE TABLE [dbo].[DynamicPersonOfInterest] (
  [IdDynamic] [int] NOT NULL,
  [IdPersonOfInterest] [int] NOT NULL,
  CONSTRAINT [PK_DynamicPersonOfInterest] PRIMARY KEY CLUSTERED ([IdDynamic], [IdPersonOfInterest])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[DynamicPersonOfInterest]
  ADD CONSTRAINT [FK_DynamicPersonOfInterest_Dynamic] FOREIGN KEY ([IdDynamic]) REFERENCES [dbo].[Dynamic] ([Id])
GO

ALTER TABLE [dbo].[DynamicPersonOfInterest]
  ADD CONSTRAINT [FK_DynamicPersonOfInterest_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO