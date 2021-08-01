ActiveAdmin.register Lead do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :lead_type, :salesman, :due_date, :detail, :client_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:lead_type, :salesman, :due_date, :detail, :client_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
