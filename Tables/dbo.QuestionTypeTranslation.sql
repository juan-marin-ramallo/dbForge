CREATE TABLE [dbo].[QuestionTypeTranslation] (
  [CodeQuestionType] [varchar](5) NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Description] [varchar](50) NOT NULL,
  CONSTRAINT [PK_QuestionTypeTranslation] PRIMARY KEY CLUSTERED ([CodeQuestionType], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[QuestionTypeTranslation]
  ADD CONSTRAINT [FK_QuestionTypeTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO

ALTER TABLE [dbo].[QuestionTypeTranslation]
  ADD CONSTRAINT [FK_QuestionTypeTranslation_QuestionType] FOREIGN KEY ([CodeQuestionType]) REFERENCES [dbo].[QuestionType] ([Code])
GO