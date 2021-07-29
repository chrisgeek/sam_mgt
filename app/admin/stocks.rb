ActiveAdmin.register Stock do
  permit_params :name, :product_id, :quantity, :arrival_date
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :product_id, :name, :quantity, :arrival_date
  #
  # or
  #
  # permit_params do
  #   permitted = [:product_id, :name, :quantity, :arrival_date]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
