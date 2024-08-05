CREATE TABLE [dbo].[QuestionOption] (
  [Id] [int] IDENTITY,
  [IdQuestion] [int] NOT NULL,
  [Text] [varchar](250) NOT NULL,
  [Default] [bit] NOT NULL,
  [Weight] [int] NULL,
  [IsNotApply] [bit] NULL,
  [RedirectToSection] [int] NULL,
  CONSTRAINT [PK_QuestionOption] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[QuestionOption]
  ADD CONSTRAINT [FK_QuestionOption_Question] FOREIGN KEY ([IdQuestion]) REFERENCES [dbo].[Question] ([Id])
GO