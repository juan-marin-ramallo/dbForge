CREATE TYPE [dbo].[ScheduleReportFilterConditionTableType] AS TABLE (
  [Id] [int] NULL,
  [IdQuestion] [int] NULL,
  [IdProduct] [int] NULL,
  [IdProductReportAttribute] [int] NULL,
  [ConditionType] [varchar](3) NOT NULL,
  [ConditionValue] [varchar](5000) NULL
)
GO