CREATE procedure UpdateCostUploadId
@p_id bigint,    
@p_new_cost float
as
begin
declare @old_cost  Float

select @old_cost = cost from trn.RFPuploadHistory where id = @p_id;

if @old_cost is null 
	update trn.RFPuploadHistory set cost = @p_new_cost where id = @p_id
else
	update trn.RFPuploadHistory set cost = @old_cost + @p_new_cost where id = @p_id;
end