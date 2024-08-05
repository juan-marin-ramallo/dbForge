CREATE TABLE [dbo].[DashboardSectionTranslation] (
  [IdDashboardSection] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Name] [varchar](128) NOT NULL,
  [Description] [varchar](4096) NULL,
  CONSTRAINT [PK_DashboardSectionTranslation] PRIMARY KEY CLUSTERED ([IdDashboardSection], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[DashboardSectionTranslation]
  ADD CONSTRAINT [FK_DashboardSectionTranslation_DashboardSection] FOREIGN KEY ([IdDashboardSection]) REFERENCES [dbo].[DashboardSection] ([Id])
GO

ALTER TABLE [dbo].[DashboardSectionTranslation]
  ADD CONSTRAINT [FK_DashboardSectionTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO