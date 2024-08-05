CREATE TABLE [dbo].[ParameterType] (
  [Id] [int] NOT NULL,
  [Name] [varchar](50) NOT NULL,
  [Deleted] [bit] NULL,
  [Untouchable] [bit] NULL CONSTRAINT [DF_ParameterType_Untochable] DEFAULT (0),
  [Invisible] [bit] NOT NULL CONSTRAINT [DF_ParameterType_Invisible] DEFAULT (0),
  CONSTRAINT [PK_ParameterType] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO