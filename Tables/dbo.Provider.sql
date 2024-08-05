CREATE TABLE [dbo].[Provider] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [SapId] [varchar](18) NOT NULL,
  [Society] [varchar](4) NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_Provider_Deleted] DEFAULT (0),
  CONSTRAINT [PK_Provider] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO