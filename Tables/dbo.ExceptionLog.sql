CREATE TABLE [dbo].[ExceptionLog] (
  [Id] [int] IDENTITY,
  [Date] [datetime] NOT NULL,
  [AssemblyName] [varchar](150) NOT NULL,
  [ClassName] [varchar](100) NOT NULL,
  [MethodName] [varchar](200) NOT NULL,
  [ExceptionMessage] [varchar](500) NULL,
  [ExceptionDetails] [varchar](8000) NULL,
  CONSTRAINT [PK_ExceptionLog] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO