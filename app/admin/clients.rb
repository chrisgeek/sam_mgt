ActiveAdmin.register Client do
  permit_params :company_id, :first_name, :middle_name, :last_name, :phone_no, :email, :company_name
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :company_id, :first_name, :last_name, :middle_name, :phone_no, :email, :company_name
  #
  # or
  #
  # permit_params do
  #   permitted = [:company_id, :first_name, :last_name, :middle_name, :phone_no, :email, :company_name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
