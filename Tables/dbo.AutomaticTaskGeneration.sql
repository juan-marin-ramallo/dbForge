CREATE TABLE [dbo].[AutomaticTaskGeneration] (
  [Code] [int] NOT NULL,
  [Name] [varchar](50) NOT NULL,
  [IdConfiguration] [int] NOT NULL,
  [IdPermission] [smallint] NULL,
  [TimeValue] [varchar](50) NULL,
  CONSTRAINT [PK_AutomaticTaskGeneration] PRIMARY KEY CLUSTERED ([Code])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[AutomaticTaskGeneration]
  ADD CONSTRAINT [FK_AutomaticTaskGeneration_Configuration] FOREIGN KEY ([IdConfiguration]) REFERENCES [dbo].[Configuration] ([Id])
GO

ALTER TABLE [dbo].[AutomaticTaskGeneration]
  ADD CONSTRAINT [FK_AutomaticTaskGeneration_Permission] FOREIGN KEY ([IdPermission]) REFERENCES [dbo].[Permission] ([Id])
GO