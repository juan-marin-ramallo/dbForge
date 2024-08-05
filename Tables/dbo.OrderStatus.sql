CREATE TABLE [dbo].[OrderStatus] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [Description] [varchar](100) NOT NULL,
  [Abbreviation] [varchar](3) NOT NULL,
  [IsFinal] [bit] NOT NULL,
  [IsInitial] [bit] NOT NULL,
  [CanEdit] [bit] NOT NULL,
  [CanEditPrice] [bit] NOT NULL CONSTRAINT [DF__OrderStat__CanEd__04E65333] DEFAULT (0),
  [Disabled] [bit] NOT NULL CONSTRAINT [DF__OrderStat__Disab__06CE9BA5] DEFAULT (0),
  CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO