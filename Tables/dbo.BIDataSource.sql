CREATE TABLE [dbo].[BIDataSource] (
  [Id] [int] NOT NULL,
  [Name] [varchar](50) NOT NULL,
  [LastReportedDate] [datetime] NOT NULL,
  [StoredProcedure] [varchar](50) NOT NULL,
  [LocalBasePath] [varchar](260) NOT NULL,
  CONSTRAINT [PK_BIDataSource] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO