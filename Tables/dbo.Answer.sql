CREATE TABLE [dbo].[Answer] (
  [Id] [int] IDENTITY,
  [IdQuestion] [int] NOT NULL,
  [IdCompletedForm] [int] NOT NULL,
  [QuestionType] [varchar](5) NOT NULL,
  [FreeText] [varchar](5000) NULL,
  [Check] [bit] NULL,
  [YNOption] [bit] NULL,
  [DateReply] [datetime] NULL,
  [ImageName] [varchar](100) NULL,
  [ImageEncoded] [varbinary](max) NULL,
  [Skipped] [bit] NOT NULL,
  [IdQuestionOption] [int] NULL,
  [ImageUrl] [varchar](5000) NULL,
  [DoesNotApply] [bit] NULL CONSTRAINT [DF_Answer_DoesNotApply] DEFAULT (0),
  CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Answer]
  ADD CONSTRAINT [FK_Answer_CompletedForm] FOREIGN KEY ([IdCompletedForm]) REFERENCES [dbo].[CompletedForm] ([Id])
GO

ALTER TABLE [dbo].[Answer]
  ADD CONSTRAINT [FK_Answer_Question] FOREIGN KEY ([IdQuestion]) REFERENCES [dbo].[Question] ([Id])
GO

ALTER TABLE [dbo].[Answer]
  ADD CONSTRAINT [FK_Answer_QuestionOption] FOREIGN KEY ([IdQuestionOption]) REFERENCES [dbo].[QuestionOption] ([Id])
GO