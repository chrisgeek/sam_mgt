ActiveAdmin.register Activity do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :activity_type, :name, :activity_for, :due_date, :detail, :leader, :member
  #
  # or
  #
  # permit_params do
  #   permitted = [:activity_type, :name, :activity_for, :due_date, :detail, :leader, :member]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
