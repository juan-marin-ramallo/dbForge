CREATE TABLE [dbo].[DashboardSection] (
  [Id] [int] NOT NULL,
  [Name] [varchar](128) NOT NULL,
  [Description] [varchar](4096) NULL,
  [ImageName] [varchar](256) NULL,
  [IdPermission] [smallint] NULL,
  [PartialView] [varchar](256) NOT NULL,
  CONSTRAINT [PK_DashboardSection] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[DashboardSection]
  ADD CONSTRAINT [FK_DashboardSection_Permission] FOREIGN KEY ([IdPermission]) REFERENCES [dbo].[Permission] ([Id])
GO