CREATE TABLE [Tzdb].[Intervals] (
  [Id] [int] IDENTITY,
  [ZoneId] [int] NOT NULL,
  [UtcStart] [datetime2](0) NOT NULL,
  [UtcEnd] [datetime2](0) NOT NULL,
  [LocalStart] [datetime2](0) NOT NULL,
  [LocalEnd] [datetime2](0) NOT NULL,
  [OffsetMinutes] [smallint] NOT NULL,
  [Abbreviation] [varchar](10) NOT NULL,
  CONSTRAINT [PK__Interval__3214EC075E552EC8] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_Intervals_Local]
  ON [Tzdb].[Intervals] ([ZoneId], [LocalStart], [LocalEnd], [UtcStart])
  INCLUDE ([Abbreviation], [OffsetMinutes])
  ON [PRIMARY]
GO

CREATE INDEX [IX_Intervals_Utc]
  ON [Tzdb].[Intervals] ([ZoneId], [UtcStart], [UtcEnd])
  INCLUDE ([Abbreviation], [OffsetMinutes])
  ON [PRIMARY]
GO

ALTER TABLE [Tzdb].[Intervals]
  ADD CONSTRAINT [FK_Intervals_Zones] FOREIGN KEY ([ZoneId]) REFERENCES [Tzdb].[Zones] ([Id])
GO