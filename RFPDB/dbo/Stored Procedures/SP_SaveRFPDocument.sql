 CREATE PROC [dbo].[SP_SaveRFPDocument]
 @UploadHistoryid bigint,
 @DocumentName nvarchar(500), 
 @DocumentType nvarchar(500)
 AS
 BEGIN
 INSERT INTO TRN.RFPUploadDocuments(UploadHistoryId, DocumentName, DocumentType, IsActive) VALUES
 (@UploadHistoryid, @DocumentName, @DocumentType, 1)
 END
