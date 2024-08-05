CREATE TABLE [dbo].[WorkPlan] (
  [Id] [int] IDENTITY,
  [StartDate] [datetime] NOT NULL,
  [EndDate] [datetime] NOT NULL,
  [ApprovedState] [smallint] NOT NULL CONSTRAINT [DF_WorkPlan_ApprovedState] DEFAULT (2),
  [ApprovingUserId] [int] NULL,
  [ApprovedDate] [datetime] NULL,
  [ApprovedReason] [nvarchar](250) NULL,
  [IdUser] [int] NOT NULL,
  [CreationDate] [datetime] NOT NULL,
  [Deleted] [bit] NOT NULL,
  [IdRouteGroup] [int] NULL,
  CONSTRAINT [PK_WorkPlan] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO