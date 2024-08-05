CREATE TABLE [dbo].[AgreementPointOfInterest] (
  [Id] [int] IDENTITY,
  [IdPointOfInterest] [int] NULL,
  [IdAgreement] [int] NULL,
  [Date] [datetime] NULL,
  CONSTRAINT [PK_AgreementPointOfInterest] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[AgreementPointOfInterest]
  ADD CONSTRAINT [FK_AgreementPointOfInterest_AgreementPointOfInterest] FOREIGN KEY ([IdAgreement]) REFERENCES [dbo].[Agreement] ([Id])
GO

ALTER TABLE [dbo].[AgreementPointOfInterest]
  ADD CONSTRAINT [FK_AgreementPointOfInterest_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO