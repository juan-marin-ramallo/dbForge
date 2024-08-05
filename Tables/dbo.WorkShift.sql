CREATE TABLE [dbo].[WorkShift] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [StartTime] [time] NOT NULL,
  [EndTime] [time] NOT NULL,
  [IdType] [int] NOT NULL,
  [CreatedDate] [datetime] NOT NULL,
  [Deleted] [bit] NOT NULL,
  [DeletedDate] [datetime] NULL,
  CONSTRAINT [PK_WorkShift] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[WorkShift]
  ADD CONSTRAINT [FK_WorkShift_WorkShiftType] FOREIGN KEY ([IdType]) REFERENCES [dbo].[WorkShiftType] ([Id])
GO