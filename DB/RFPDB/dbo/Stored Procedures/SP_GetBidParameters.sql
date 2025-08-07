CREATE PROC [dbo].[SP_GetBidParameters]
@WinzoneId bigint
AS
BEGIN
SELECT WinzoneId, HistoryWithClient, EligibilityCriteria, RelevantExperience, ImmediateAttention FROM TRN.BidParameters WHERE WinzoneId = @WinzoneId
END
