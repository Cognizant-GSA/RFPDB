 
CREATE PROC SP_GetUsedClientOverView
@WinzoneId bigint,
@DeckType nvarchar(50)
AS
BEGIN
	IF @DeckType = 'DealOnAPage'
	BEGIN
	SELECT ClientOverViewForDealOnAPage FROM 
	TRN.RFPWinzoneOutputFiles WHERE WinzoneId = @WinzoneId 
	END
	ELSE
	BEGIN
	SELECT ClientOverViewForBidSummary FROM 
	TRN.RFPWinzoneOutputFiles WHERE WinzoneId = @WinzoneId 
	END
END