CREATE PROC [dbo].[SP_AddBidParameters]
@WinzoneId bigint,
@HistoryWithClient nvarchar(500),
@EligibilityCriteria nvarchar(500),
@RelevantExperience nvarchar(500),
@ImmediateAttention nvarchar(500)
AS
BEGIN
IF NOT EXISTS(SELECT WinzoneId FROM TRN.BidParameters WHERE WinzoneId = @WinzoneId)
BEGIN
	INSERT INTO TRN.BidParameters (WinzoneId, HistoryWithClient, EligibilityCriteria, RelevantExperience, ImmediateAttention) VALUES
	(@WinzoneId, @HistoryWithClient, @EligibilityCriteria, @RelevantExperience, @ImmediateAttention)
END
ELSE
BEGIN
UPDATE TRN.BidParameters SET WinzoneId = @WinzoneId, HistoryWithClient = @HistoryWithClient,
EligibilityCriteria = @EligibilityCriteria, RelevantExperience = @RelevantExperience, ImmediateAttention = @ImmediateAttention
WHERE WinzoneId = @WinzoneId
END
END
