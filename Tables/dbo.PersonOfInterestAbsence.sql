CREATE TABLE [dbo].[PersonOfInterestAbsence] (
  [Id] [int] IDENTITY,
  [IdPersonOfInterest] [int] NOT NULL,
  [FromDate] [datetime] NOT NULL,
  [FromSavedDate] [datetime] NOT NULL,
  [ToDate] [datetime] NULL,
  [ToSavedDate] [datetime] NULL,
  [IdAbsenceReason] [int] NULL,
  [Comments] [varchar](5000) NULL,
  CONSTRAINT [PK_PersonOfInterestAbsence] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PersonOfInterestAbsence]
  ADD CONSTRAINT [FK_PersonOfInterestAbsence_AbsenceReason] FOREIGN KEY ([IdAbsenceReason]) REFERENCES [dbo].[AbsenceReason] ([Id])
GO

ALTER TABLE [dbo].[PersonOfInterestAbsence]
  ADD CONSTRAINT [FK_PersonOfInterestAbsence_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO