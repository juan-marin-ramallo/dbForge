CREATE TABLE [dbo].[SupervisorAppPermission] (
  [Id] [int] IDENTITY,
  [Description] [varchar](100) NOT NULL,
  [Order] [smallint] NOT NULL,
  [Enabled] [bit] NOT NULL CONSTRAINT [DF_SupervisorAppPermission_Enabled] DEFAULT (1),
  CONSTRAINT [PK_SupervisorAppPermission] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO