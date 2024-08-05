CREATE TABLE [dbo].[Zone] (
  [Id] [int] IDENTITY,
  [Description] [varchar](100) NOT NULL,
  [Date] [datetime] NULL,
  [ApplyToAllPointOfInterest] [bit] NULL,
  [ApplyToAllPersonOfInterest] [bit] NULL,
  CONSTRAINT [PK_Zone] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO