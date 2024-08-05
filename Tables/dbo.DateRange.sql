CREATE TABLE [dbo].[DateRange] (
  [Id] [smallint] NOT NULL,
  [Name] [varchar](128) NOT NULL,
  [DatePart] [varchar](16) NOT NULL,
  [Number] [smallint] NOT NULL,
  [FromBeginning] [bit] NOT NULL,
  [ToEnd] [bit] NOT NULL,
  [DisplayOrder] [smallint] NOT NULL,
  CONSTRAINT [PK_DateRange] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO