CREATE TABLE [dbo].[Promotion] (
  [Id] [int] IDENTITY,
  [Name] [varchar](50) NOT NULL,
  [StartDate] [datetime] NOT NULL,
  [EndDate] [datetime] NOT NULL,
  [Description] [varchar](1000) NULL,
  [FileName] [varchar](100) NULL,
  [RealFileName] [varchar](100) NULL,
  [FileEncoded] [varbinary](max) NULL,
  [CreatedDate] [datetime] NULL,
  [Deleted] [bit] NULL,
  [DeletedDate] [datetime] NULL,
  [IdUser] [int] NULL,
  [AllPointOfInterest] [bit] NULL,
  [Identifier] [varchar](100) NULL,
  [MD5Checksum] [varchar](32) NULL,
  CONSTRAINT [PK_Promotion] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Promotion]
  ADD CONSTRAINT [FK_Promotion_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO