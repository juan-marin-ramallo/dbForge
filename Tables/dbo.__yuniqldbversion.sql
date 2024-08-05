CREATE TABLE [dbo].[__yuniqldbversion] (
  [SequenceId] [smallint] IDENTITY,
  [Version] [nvarchar](512) NOT NULL,
  [AppliedOnUtc] [datetime] NOT NULL CONSTRAINT [DF___YuniqlDbVersion_AppliedOnUtc] DEFAULT (getutcdate()),
  [AppliedByUser] [nvarchar](32) NOT NULL CONSTRAINT [DF___YuniqlDbVersion_AppliedByUser] DEFAULT (suser_sname()),
  [AppliedByTool] [nvarchar](32) NULL,
  [AppliedByToolVersion] [nvarchar](16) NULL,
  [AdditionalArtifacts] [varbinary](max) NULL,
  CONSTRAINT [PK___YuniqlDbVersion] PRIMARY KEY CLUSTERED ([SequenceId]),
  CONSTRAINT [IX___YuniqlDbVersion] UNIQUE ([Version])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO