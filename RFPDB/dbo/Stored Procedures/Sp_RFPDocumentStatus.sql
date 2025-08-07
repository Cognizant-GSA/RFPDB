 
CREATE procedure Sp_RFPDocumentStatus          
(          
@WinzoneID bigint        
)          
as            
Begin       
IF  EXISTS(select * from TRN.RFPUploadHistory where  WinzoneID=@WinzoneID and  IsActive=1)     
Begin    
  Declare @CombinedStatus nvarchar(50)= (select CombinedStatus from trn.RFPWinzoneOutputFiles where WinzoneId=@WinzoneID) 
  IF (@CombinedStatus = 'Completed')
   Begin  
     Select  1  as success,
	 'Completed' as message
   End 
   Else IF (@CombinedStatus = 'In Progress')
   Begin  
     Select  1  as success,
	 'In Progress' as message
   End 
   Else IF (@CombinedStatus = 'Failed' or @CombinedStatus is null or @CombinedStatus = '')
   Begin  
     Select  1  as success,
	 'Failed' as message
   End 
End     
Else  
Begin  
     Select  1  as success,
	  'Not Found' as message
End  
End