CREATE TABLE [dbo].[PowerpointMarkupProductReport] (
  [Id] [int] IDENTITY,
  [Name] [varchar](250) NOT NULL,
  [ShowTitles] [bit] NOT NULL CONSTRAINT [DF_PowerpointMarkupProductReport_ShowTitles] DEFAULT (1),
  CONSTRAINT [PK_PowerpointMarkupProductReport] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO