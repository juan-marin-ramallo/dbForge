CREATE TABLE [dbo].[Notification] (
  [Code] [int] NOT NULL,
  [Name] [varchar](100) NOT NULL,
  [Subject] [varchar](100) NULL,
  [Template] [varchar](100) NULL,
  [TemplateExcel] [varchar](100) NULL,
  [IdPermission] [smallint] NULL,
  [Description] [varchar](500) NULL,
  [IdPersonPermission] [int] NULL CONSTRAINT [DF_Notification_IdPersonPermission] DEFAULT (NULL),
  [Visible] [bit] NOT NULL CONSTRAINT [DF_Notification_Visible] DEFAULT (1),
  [IdConfiguration] [int] NULL,
  CONSTRAINT [PK_Notification] PRIMARY KEY CLUSTERED ([Code])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Notification]
  ADD CONSTRAINT [FK_Notification_Configuration] FOREIGN KEY ([IdConfiguration]) REFERENCES [dbo].[Configuration] ([Id])
GO

ALTER TABLE [dbo].[Notification]
  ADD CONSTRAINT [FK_Notification_Notification] FOREIGN KEY ([IdPermission]) REFERENCES [dbo].[Permission] ([Id])
GO