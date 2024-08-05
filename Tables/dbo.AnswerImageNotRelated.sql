CREATE TABLE [dbo].[AnswerImageNotRelated] (
  [Id] [int] IDENTITY,
  [IdPersonOfInterest] [int] NULL,
  [ImageName] [varchar](100) NULL,
  [ImageEncode] [varbinary](max) NULL,
  [ReceivedDate] [datetime] NULL,
  [ProductReport] [bit] NOT NULL CONSTRAINT [DF_AnswerImageNotRelated_ProductReport] DEFAULT (0),
  [TaskReport] [bit] NOT NULL CONSTRAINT [DF_AnswerImageNotRelated_TaskReport] DEFAULT (0),
  [OrderReport] [bit] NOT NULL CONSTRAINT [DF_AnswerImageNotRelated_OrderReport] DEFAULT (0),
  CONSTRAINT [PK_AnswerImageNotRelated] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO