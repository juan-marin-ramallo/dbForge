CREATE TABLE [Tzdb].[Zones] (
  [Id] [int] IDENTITY,
  [Name] [varchar](50) NOT NULL,
  CONSTRAINT [PK__Zones__3214EC07E90ED937] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [IX_Zones_Name]
  ON [Tzdb].[Zones] ([Name])
  ON [PRIMARY]
GO