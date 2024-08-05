CREATE TABLE [dbo].[QuestionType] (
  [Code] [varchar](5) NOT NULL,
  [Description] [varchar](50) NOT NULL,
  [Order] [int] NOT NULL,
  CONSTRAINT [PK_QuestionType] PRIMARY KEY CLUSTERED ([Code])
)
ON [PRIMARY]
GO