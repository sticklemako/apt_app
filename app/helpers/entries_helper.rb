module EntriesHelper
  def add_update_account_head
	if !account_head_params[:id].empty?
	  @entry.account_head_id = account_head_params[:id]
	end
  end
end
