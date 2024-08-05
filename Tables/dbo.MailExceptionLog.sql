CREATE TABLE [dbo].[MailExceptionLog] (
  [Id] [int] IDENTITY,
  [Date] [datetime] NULL,
  [MailTo] [varchar](50) NULL,
  [MailSubject] [varchar](50) NULL,
  [ExceptionMessage] [varchar](max) NULL,
  [MailTemplate] [varchar](max) NULL,
  CONSTRAINT [PK_MailExceptionLog] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO