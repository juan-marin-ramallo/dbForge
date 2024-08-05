CREATE TABLE [dbo].[Agreement] (
  [Id] [int] IDENTITY,
  [StartDate] [datetime] NOT NULL,
  [EndDate] [datetime] NOT NULL,
  [Name] [varchar](50) NOT NULL,
  [FileName] [varchar](100) NULL,
  [RealFileName] [varchar](100) NULL,
  [FileEncoded] [varbinary](max) NULL,
  [FileType] [varchar](50) NULL,
  [Description] [varchar](1000) NULL,
  [CreatedDate] [datetime] NULL,
  [Deleted] [bit] NULL,
  [DeletedDate] [datetime] NULL,
  [IdUser] [int] NULL,
  [AllPointOfInterest] [bit] NULL,
  [Identifier] [varchar](100) NULL,
  [MD5Checksum] [varchar](32) NULL,
  CONSTRAINT [PK_Agreement] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Agreement]
  ADD CONSTRAINT [FK_Agreement_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO