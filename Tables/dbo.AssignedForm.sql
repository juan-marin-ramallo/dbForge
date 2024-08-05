CREATE TABLE [dbo].[AssignedForm] (
  [Id] [int] IDENTITY,
  [IdForm] [int] NOT NULL,
  [IdPointOfInterest] [int] NULL,
  [Date] [datetime] NOT NULL,
  [Deleted] [bit] NOT NULL,
  [DeletedDate] [datetime] NULL,
  [IdPersonOfInterest] [int] NULL,
  CONSTRAINT [PK_AssignedForm] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [NCL_IX_AssignedForm_Deleted]
  ON [dbo].[AssignedForm] ([Deleted])
  INCLUDE ([IdForm], [IdPointOfInterest])
  ON [PRIMARY]
GO

CREATE INDEX [NCL_IX_AssignedForm_IdForm_Deleted]
  ON [dbo].[AssignedForm] ([IdForm], [Deleted])
  INCLUDE ([IdPersonOfInterest], [IdPointOfInterest])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[AssignedForm]
  ADD CONSTRAINT [FK_AssignedForm_Form] FOREIGN KEY ([IdForm]) REFERENCES [dbo].[Form] ([Id])
GO

ALTER TABLE [dbo].[AssignedForm]
  ADD CONSTRAINT [FK_AssignedForm_IdPersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[AssignedForm]
  ADD CONSTRAINT [FK_AssignedForm_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO