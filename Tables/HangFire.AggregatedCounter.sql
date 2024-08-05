CREATE TABLE [HangFire].[AggregatedCounter] (
  [Id] [int] IDENTITY,
  [Key] [nvarchar](100) NOT NULL,
  [Value] [bigint] NOT NULL,
  [ExpireAt] [datetime] NULL,
  CONSTRAINT [PK_HangFire_CounterAggregated] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [UX_HangFire_CounterAggregated_Key]
  ON [HangFire].[AggregatedCounter] ([Key])
  INCLUDE ([Value])
  ON [PRIMARY]
GO