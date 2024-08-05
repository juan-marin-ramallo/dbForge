CREATE TABLE [dbo].[Brand] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [SapId] [varchar](18) NOT NULL,
  [Society] [varchar](4) NULL,
  [ProviderId] [int] NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_Brand_Deleted] DEFAULT (0),
  CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Brand]
  ADD CONSTRAINT [FK_Brand_Provider] FOREIGN KEY ([ProviderId]) REFERENCES [dbo].[Provider] ([Id])
GO