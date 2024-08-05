CREATE TABLE [dbo].[PackageConfiguration] (
  [Id] [smallint] NOT NULL,
  [Name] [varchar](50) NOT NULL,
  [Description] [varchar](200) NOT NULL,
  [Value] [int] NOT NULL,
  [ErrorMessage] [varchar](200) NOT NULL,
  CONSTRAINT [PK_PackageConfiguration] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO