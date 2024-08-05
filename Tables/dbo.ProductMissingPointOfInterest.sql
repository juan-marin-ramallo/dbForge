CREATE TABLE [dbo].[ProductMissingPointOfInterest] (
  [Id] [int] IDENTITY,
  [IdPointOfInterest] [int] NOT NULL,
  [IdPersonOfInterest] [int] NOT NULL,
  [Date] [datetime] NOT NULL,
  [ReceivedDate] [datetime] NOT NULL,
  [MissingConfirmation] [bit] NULL,
  [IdProductMissingType] [int] NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_ProductMissingPointOfInterest_Deleted] DEFAULT (0),
  [IsManual] [bit] NULL CONSTRAINT [DF_ProductMissingPointOfInterest_IsManual] DEFAULT (0),
  [IsValid] [bit] NULL CONSTRAINT [DF_ProductMissingPointOfInterest_IsValid] DEFAULT (NULL),
  [ValidationDate] [datetime] NULL CONSTRAINT [DF_ProductMissingPointOfInterest_ValidationDate] DEFAULT (NULL),
  [ValidationImage] [varchar](512) NULL CONSTRAINT [DF_ProductMissingPointOfInterest_ValidationImage] DEFAULT (NULL),
  [ValidationReceivedDate] [datetime] NULL CONSTRAINT [DF_ProductMissingPointOfInterest_ValidationReceivedDate] DEFAULT (NULL),
  [ValidationDescription] [varchar](8000) NULL CONSTRAINT [DF_ProductMissingPointOfInterest_ValidationDescription] DEFAULT (NULL),
  CONSTRAINT [PK_ProductMissingPointOfInterest] PRIMARY KEY CLUSTERED ([Id]),
  CONSTRAINT [UQ_ProductMissingPointOfInterest] UNIQUE ([IdPersonOfInterest], [IdPointOfInterest], [Date])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_NCL_ProductMissingPointOfInterest_IdPersonOfInterest_Deleted_Date]
  ON [dbo].[ProductMissingPointOfInterest] ([IdPersonOfInterest], [Deleted], [Date])
  INCLUDE ([Id], [IdPointOfInterest], [MissingConfirmation], [IdProductMissingType])
  ON [PRIMARY]
GO

CREATE INDEX [NCL_IX_ProductMissingPointOfInterest_Deleted_Date]
  ON [dbo].[ProductMissingPointOfInterest] ([Deleted], [Date])
  INCLUDE ([Id], [IdPointOfInterest], [IdPersonOfInterest], [MissingConfirmation], [IdProductMissingType])
  ON [PRIMARY]
GO

CREATE INDEX [NCL_IX_ProductMissingPointOfInterest_IdPointOfInterest_Deleted_Date]
  ON [dbo].[ProductMissingPointOfInterest] ([IdPointOfInterest], [Deleted], [Date])
  INCLUDE ([Id], [IdPersonOfInterest], [MissingConfirmation], [IdProductMissingType])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductMissingPointOfInterest]
  ADD CONSTRAINT [FK_ProductMissingPointOfInterest_Parameter] FOREIGN KEY ([IdProductMissingType]) REFERENCES [dbo].[Parameter] ([Id])
GO

ALTER TABLE [dbo].[ProductMissingPointOfInterest]
  ADD CONSTRAINT [FK_ProductMissingPointOfInterest_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[ProductMissingPointOfInterest]
  ADD CONSTRAINT [FK_ProductMissingPointOfInterest_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO