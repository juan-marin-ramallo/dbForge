SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO


CREATE Procedure [dbo].[InsertExceptionLog]
(
	 @AssemblyName [sys].[varchar](150)
	,@ClassName [sys].[varchar](100)
	,@MethodName [sys].[varchar](100)	
	,@ExceptionMessage [sys].[varchar](500) = Null
	,@ExceptionDetails [sys].[varchar](8000) = Null
)
As
BEGIN
	INSERT INTO [dbo].[ExceptionLog]
           ([Date], [AssemblyName],[ClassName],[MethodName], [ExceptionMessage], [ExceptionDetails])
    VALUES (GETUTCDATE(), @AssemblyName, @ClassName, @MethodName, @ExceptionMessage, @ExceptionDetails)
END







GO