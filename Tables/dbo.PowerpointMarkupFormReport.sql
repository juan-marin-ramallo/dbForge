CREATE TABLE [dbo].[PowerpointMarkupFormReport] (
  [Id] [int] IDENTITY,
  [IdForm] [int] NOT NULL,
  [Name] [varchar](250) NOT NULL,
  [ShowTitles] [bit] NOT NULL CONSTRAINT [DF_PowerpointMarkupFormReport_ShowTitles] DEFAULT (0),
  CONSTRAINT [PK_PowerpointMarkupFormReport] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PowerpointMarkupFormReport]
  ADD CONSTRAINT [FK_PowerpointMarkupFormReport_Form] FOREIGN KEY ([IdForm]) REFERENCES [dbo].[Form] ([Id])
GO