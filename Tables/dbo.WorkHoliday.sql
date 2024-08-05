CREATE TABLE [dbo].[WorkHoliday] (
  [Date] [date] NOT NULL,
  [Description] [varchar](100) NOT NULL,
  CONSTRAINT [PK_WorkHoliday] PRIMARY KEY CLUSTERED ([Date])
)
ON [PRIMARY]
GO