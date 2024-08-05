CREATE TABLE [dbo].[PersonOfInterestFiscalizationInfo] (
  [IdPersonOfInterest] [int] NOT NULL,
  [IsOutsourced] [bit] NOT NULL,
  [IdPlaceOfWork] [int] NULL,
  [WorkOnSundays] [bit] NOT NULL,
  [HasSplittedWorkHours] [bit] NOT NULL,
  [SplittedWorkHoursResolutionNumber] [varchar](50) NULL,
  [CreatedDate] [datetime] NOT NULL,
  CONSTRAINT [PK_PersonOfInterestFiscalizationInfo] PRIMARY KEY CLUSTERED ([IdPersonOfInterest])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PersonOfInterestFiscalizationInfo]
  ADD CONSTRAINT [FK_PersonOfInterestFiscalizationInfo_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO