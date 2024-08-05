CREATE TABLE [dbo].[DynamicCompletedForm] (
  [Id] [int] IDENTITY,
  [IdCompletedForm] [int] NULL,
  [IdDynamic] [int] NULL,
  CONSTRAINT [PK__DynamicC__3214EC075BD0317B] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[DynamicCompletedForm]
  ADD CONSTRAINT [FK__DynamicCo__IdCom__308FCB47] FOREIGN KEY ([IdCompletedForm]) REFERENCES [dbo].[CompletedForm] ([Id])
GO

ALTER TABLE [dbo].[DynamicCompletedForm]
  ADD CONSTRAINT [FK__DynamicCo__IdDyn__3183EF80] FOREIGN KEY ([IdDynamic]) REFERENCES [dbo].[Dynamic] ([Id])
GO