CREATE TABLE [dbo].[WsMethodCallLog] (
  [Id] [int] IDENTITY,
  [Date] [datetime] NOT NULL,
  [MethodName] [varchar](200) NOT NULL,
  [MethodParameters] [varchar](max) NULL,
  CONSTRAINT [PK_WsMethodCallLog] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO