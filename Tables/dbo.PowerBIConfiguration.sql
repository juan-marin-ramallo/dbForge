CREATE TABLE [dbo].[PowerBIConfiguration] (
  [Id] [int] IDENTITY,
  [ApplicationId] [varchar](100) NOT NULL,
  [WorkspaceId] [varchar](100) NOT NULL,
  [AuthenticationType] [varchar](50) NOT NULL,
  [Username] [varchar](50) NOT NULL,
  [Password] [varchar](100) NOT NULL,
  [ApplicationSecret] [varchar](100) NULL,
  [Tenant] [varchar](100) NULL,
  CONSTRAINT [PK_PowerBIConfiguration_Id] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO