CREATE TABLE [dbo].[QuestionTag] (
  [IdQuestion] [int] NOT NULL,
  [IdTag] [int] NOT NULL,
  CONSTRAINT [PK_QuestionTag] PRIMARY KEY CLUSTERED ([IdQuestion], [IdTag])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[QuestionTag]
  ADD CONSTRAINT [FK_QuestionTag_Parameter] FOREIGN KEY ([IdTag]) REFERENCES [dbo].[Parameter] ([Id])
GO

ALTER TABLE [dbo].[QuestionTag]
  ADD CONSTRAINT [FK_QuestionTag_Question] FOREIGN KEY ([IdQuestion]) REFERENCES [dbo].[Question] ([Id])
GO