CREATE TABLE [dbo].[PowerpointMarkupElement] (
  [Id] [int] IDENTITY,
  [IdPowerPointMarkup] [int] NOT NULL,
  [Name] [varchar](50) NOT NULL,
  [X] [smallint] NOT NULL,
  [Y] [smallint] NOT NULL,
  [Cx] [smallint] NOT NULL,
  [Cy] [smallint] NOT NULL,
  CONSTRAINT [PK_PowerpointMarkupElement] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PowerpointMarkupElement]
  ADD CONSTRAINT [FK_PowerpointMarkupElement_PowerpointMarkup] FOREIGN KEY ([IdPowerPointMarkup]) REFERENCES [dbo].[PowerpointMarkup] ([Id])
GO