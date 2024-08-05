CREATE TABLE [dbo].[DateRangeTranslation] (
  [IdDateRange] [smallint] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Name] [varchar](128) NOT NULL,
  CONSTRAINT [PK_DateRangeTranslation] PRIMARY KEY CLUSTERED ([IdDateRange], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[DateRangeTranslation]
  ADD CONSTRAINT [FK_DateRangeTranslation_DateRange] FOREIGN KEY ([IdDateRange]) REFERENCES [dbo].[DateRange] ([Id])
GO

ALTER TABLE [dbo].[DateRangeTranslation]
  ADD CONSTRAINT [FK_DateRangeTranslation_DateRangeTranslation] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO