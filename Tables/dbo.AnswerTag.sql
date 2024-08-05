CREATE TABLE [dbo].[AnswerTag] (
  [IdAnswer] [int] NOT NULL,
  [IdTag] [int] NOT NULL,
  CONSTRAINT [PK_AnswerTag] PRIMARY KEY CLUSTERED ([IdAnswer], [IdTag])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[AnswerTag]
  ADD CONSTRAINT [FK_AnswerTag_Answer] FOREIGN KEY ([IdAnswer]) REFERENCES [dbo].[Answer] ([Id])
GO

ALTER TABLE [dbo].[AnswerTag]
  ADD CONSTRAINT [FK_AnswerTag_Parameter] FOREIGN KEY ([IdTag]) REFERENCES [dbo].[Parameter] ([Id])
GO