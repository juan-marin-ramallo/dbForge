CREATE TABLE [dbo].[PowerPointStyle] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [FontFamily] [varchar](50) NULL,
  [BackgroundColor] [varchar](10) NULL,
  [BackgroundImageName] [varchar](100) NULL,
  [BackgroundImageUrl] [varchar](2000) NULL,
  [FooterBackgroundColor] [varchar](10) NULL,
  [FooterLeftImageName] [varchar](100) NULL,
  [FooterLeftImageUrl] [varchar](2000) NULL,
  [FooterRightImageName] [varchar](100) NULL,
  [FooterRightImageUrl] [varchar](2000) NULL,
  [TitleBackgroundColor] [varchar](10) NULL,
  [TitleFontColor] [varchar](10) NULL,
  [TitleFontSize] [smallint] NULL,
  [SubtitleBackgroundColor] [varchar](10) NULL,
  [SubtitleFontColor] [varchar](10) NULL,
  [SubtitleFontSize] [smallint] NULL,
  [HeaderBackgroundColor] [varchar](10) NULL,
  [HeaderFontColor] [varchar](10) NULL,
  [HeaderFontSize] [smallint] NULL,
  [Deleted] [bit] NOT NULL,
  [DeletedDate] [datetime] NULL,
  CONSTRAINT [PK_PowerPointStyle] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO