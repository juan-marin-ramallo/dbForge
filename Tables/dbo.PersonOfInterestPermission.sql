CREATE TABLE [dbo].[PersonOfInterestPermission] (
  [Id] [int] NOT NULL,
  [Description] [varchar](128) NOT NULL,
  [Enabled] [bit] NOT NULL CONSTRAINT [DF_PersonOfInterestPermission_Enabled] DEFAULT (1),
  [PermissionSet] [nvarchar](25) NULL,
  [Order] [int] NULL,
  [ScheduleProfileSelection] [bit] NOT NULL CONSTRAINT [DF_PersonOfInterestPermission_ScheduleProfileSelection] DEFAULT (0),
  [CatalogPointAssignation] [bit] NOT NULL CONSTRAINT [DF_PersonOfInterestPermission_CatalogPointAssignation] DEFAULT (0),
  CONSTRAINT [PK_PersonOfInterestPermission] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO