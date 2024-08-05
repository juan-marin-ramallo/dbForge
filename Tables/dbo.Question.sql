CREATE TABLE [dbo].[Question] (
  [Id] [int] IDENTITY,
  [IdForm] [int] NOT NULL,
  [Required] [bit] NOT NULL,
  [Text] [varchar](250) NOT NULL,
  [Type] [varchar](5) NOT NULL,
  [Hint] [varchar](150) NULL,
  [YesIsProblem] [bit] NULL,
  [NoIsProblem] [bit] NULL,
  [ImageEncoded] [varbinary](max) NULL,
  [Weight] [int] NULL,
  [IsNoWeighted] [bit] NULL,
  [DefaultAnswerText] [varchar](5000) NULL,
  [Section] [int] NOT NULL CONSTRAINT [DF_Question_Section] DEFAULT (1),
  [RedirectToSection] [int] NULL,
  [RedirectToSectionAlternative] [int] NULL,
  CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Question]
  ADD CONSTRAINT [FK_Question_Form] FOREIGN KEY ([IdForm]) REFERENCES [dbo].[Form] ([Id])
GO

ALTER TABLE [dbo].[Question]
  ADD CONSTRAINT [FK_Question_QuestionType] FOREIGN KEY ([Type]) REFERENCES [dbo].[QuestionType] ([Code])
GO