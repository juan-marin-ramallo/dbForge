CREATE TABLE [dbo].[AbsenceReason] (
  [Id] [int] IDENTITY,
  [Name] [varchar](50) NOT NULL,
  [Description] [varchar](200) NOT NULL,
  [Deleted] [bit] NULL,
  [DeletedDate] [datetime] NULL,
  [EditedDate] [datetime] NULL,
  CONSTRAINT [PK_AbsenceReason] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO