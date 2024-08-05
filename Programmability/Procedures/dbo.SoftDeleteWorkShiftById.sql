SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SoftDeleteWorkShiftById]
(
    @Id INT
)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.WorkShift
    SET Deleted = 1,
        DeletedDate = GETUTCDATE()
    WHERE Id = @Id;
END;
GO