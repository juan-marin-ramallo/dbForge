CREATE TABLE [dbo].[IncidentType] (
  [Id] [int] IDENTITY,
  [Name] [varchar](50) NULL,
  [Description] [varchar](250) NULL,
  [Deleted] [bit] NOT NULL,
  [CreatedDate] [datetime] NULL,
  [EditedDate] [datetime] NULL,
  [IdUser] [int] NULL,
  CONSTRAINT [PK_IncidentType] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[IncidentType]
  ADD CONSTRAINT [FK_IncidentType_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO