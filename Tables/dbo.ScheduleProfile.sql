CREATE TABLE [dbo].[ScheduleProfile] (
  [Id] [int] IDENTITY,
  [FromDate] [datetime] NOT NULL,
  [ToDate] [datetime] NOT NULL,
  [Description] [varchar](200) NULL,
  [AllPersonOfInterest] [bit] NULL,
  [AllPointOfInterest] [bit] NULL,
  [CreatedDate] [datetime] NOT NULL,
  [IdUser] [int] NOT NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_ScheduleProfile_Deleted] DEFAULT (0),
  [DeletedDate] [datetime] NULL,
  [LimitOneMissingReport] [bit] NOT NULL CONSTRAINT [DF_ScheduleProfile_LimitOneMissingReport] DEFAULT (0),
  [RecurrenceCondition] [char](1) NOT NULL CONSTRAINT [DF__ScheduleP__Recur__24E90E71] DEFAULT ('D'),
  [RecurrenceNumber] [int] NOT NULL CONSTRAINT [DF__ScheduleP__Recur__25DD32AA] DEFAULT (1),
  [IdScheduleProfileCron] [int] NOT NULL DEFAULT (1),
  CONSTRAINT [PK_ScheduleProfile] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ScheduleProfile]
  ADD CONSTRAINT [FK_ScheduleProfile_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO