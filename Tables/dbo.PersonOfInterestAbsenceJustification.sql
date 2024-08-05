CREATE TABLE [dbo].[PersonOfInterestAbsenceJustification] (
  [Id] [int] IDENTITY,
  [IdPersonOfInterest] [int] NOT NULL,
  [Date] [datetime] NOT NULL,
  [SavedDate] [datetime] NOT NULL,
  [IdAbsenceReason] [int] NOT NULL,
  [Comments] [varchar](5000) NULL,
  CONSTRAINT [PK_PersonOfInterestAbsenceJustification] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PersonOfInterestAbsenceJustification]
  ADD CONSTRAINT [FK_PersonOfInterestAbsenceJustification_AbsenceReason] FOREIGN KEY ([IdAbsenceReason]) REFERENCES [dbo].[AbsenceReason] ([Id])
GO

ALTER TABLE [dbo].[PersonOfInterestAbsenceJustification]
  ADD CONSTRAINT [FK_PersonOfInterestAbsenceJustification_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO