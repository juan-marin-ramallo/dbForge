CREATE TABLE [dbo].[DayOfWeekTranslation] (
  [IdDayOfWeek] [smallint] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Name] [varchar](20) NOT NULL,
  CONSTRAINT [PK_DayOfWeekTranslation] PRIMARY KEY CLUSTERED ([IdDayOfWeek], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[DayOfWeekTranslation]
  ADD CONSTRAINT [FK_DayOfWeekTranslation_DayOfWeek] FOREIGN KEY ([IdDayOfWeek]) REFERENCES [dbo].[DayOfWeek] ([Id])
GO

ALTER TABLE [dbo].[DayOfWeekTranslation]
  ADD CONSTRAINT [FK_DayOfWeekTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO