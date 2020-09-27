module KobattersHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_kobatters_path
    elsif action_name == 'edit'
      kobatter_path
    end
  end
end
