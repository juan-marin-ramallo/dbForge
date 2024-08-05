CREATE TABLE [dbo].[MainBoard] (
  [Id] [int] IDENTITY,
  [Name] [varchar](50) NOT NULL,
  [Description] [varchar](100) NULL,
  [Order] [smallint] NOT NULL,
  [IdPermission] [smallint] NOT NULL,
  [IconUrl] [varchar](1000) NOT NULL,
  [ActionUrl] [varchar](200) NOT NULL,
  CONSTRAINT [PK_MainBoard_Id] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[MainBoard]
  ADD CONSTRAINT [FK_MainBoard_IdPermission] FOREIGN KEY ([IdPermission]) REFERENCES [dbo].[Permission] ([Id])
GO