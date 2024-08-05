CREATE TABLE [dbo].[UserDashboardSection] (
  [Id] [int] IDENTITY,
  [IdUser] [int] NOT NULL,
  [IdDashboardSection] [int] NOT NULL,
  [Size] [smallint] NOT NULL,
  [Position] [int] NOT NULL,
  [IdDateRange] [smallint] NOT NULL,
  CONSTRAINT [PK_UserDashboardSection] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[UserDashboardSection]
  ADD CONSTRAINT [FK_UserDashboardSection_DashboardSection] FOREIGN KEY ([IdDashboardSection]) REFERENCES [dbo].[DashboardSection] ([Id])
GO

ALTER TABLE [dbo].[UserDashboardSection]
  ADD CONSTRAINT [FK_UserDashboardSection_DateRange] FOREIGN KEY ([IdDateRange]) REFERENCES [dbo].[DateRange] ([Id])
GO

ALTER TABLE [dbo].[UserDashboardSection]
  ADD CONSTRAINT [FK_UserDashboardSection_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO