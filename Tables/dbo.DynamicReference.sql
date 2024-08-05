CREATE TABLE [dbo].[DynamicReference] (
  [Id] [int] IDENTITY,
  [IdDynamic] [int] NOT NULL,
  [Name] [varchar](100) NOT NULL,
  [Deleted] [bit] NOT NULL,
  CONSTRAINT [PK_DynamicReference] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[DynamicReference]
  ADD CONSTRAINT [FK_DynamicReference_Dynamic] FOREIGN KEY ([IdDynamic]) REFERENCES [dbo].[Dynamic] ([Id])
GO