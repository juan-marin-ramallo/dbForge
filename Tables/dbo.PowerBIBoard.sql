CREATE TABLE [dbo].[PowerBIBoard] (
  [Id] [int] IDENTITY,
  [IdPowerBIConfiguration] [int] NOT NULL,
  [BoardId] [varchar](100) NOT NULL,
  [Name] [varchar](50) NOT NULL,
  [Description] [varchar](100) NULL,
  [IdPermission] [smallint] NOT NULL,
  [IconUrl] [varchar](2000) NOT NULL,
  [ShowOnReportsPage] [bit] NOT NULL CONSTRAINT [DF_PowerBIBoard_ShowOnReportsPage] DEFAULT (1),
  CONSTRAINT [PK_PowerBIBoard_Id] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PowerBIBoard]
  ADD CONSTRAINT [FK_PowerBIBoard_IdPermission] FOREIGN KEY ([IdPermission]) REFERENCES [dbo].[Permission] ([Id])
GO

ALTER TABLE [dbo].[PowerBIBoard]
  ADD CONSTRAINT [FK_PowerBIBoard_IdPowerBIConfiguration] FOREIGN KEY ([IdPowerBIConfiguration]) REFERENCES [dbo].[PowerBIConfiguration] ([Id])
GO