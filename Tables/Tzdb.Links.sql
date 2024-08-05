CREATE TABLE [Tzdb].[Links] (
  [LinkZoneId] [int] NOT NULL,
  [CanonicalZoneId] [int] NOT NULL,
  CONSTRAINT [PK__Links__FF7285C024A26F8E] PRIMARY KEY CLUSTERED ([LinkZoneId])
)
ON [PRIMARY]
GO

ALTER TABLE [Tzdb].[Links]
  ADD CONSTRAINT [FK_Links_Zones_1] FOREIGN KEY ([LinkZoneId]) REFERENCES [Tzdb].[Zones] ([Id])
GO

ALTER TABLE [Tzdb].[Links]
  ADD CONSTRAINT [FK_Links_Zones_2] FOREIGN KEY ([CanonicalZoneId]) REFERENCES [Tzdb].[Zones] ([Id])
GO