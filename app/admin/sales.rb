ActiveAdmin.register Sale do
  permit_params :quantity, :product_id, :price

  collection_action :chart, method: :get do
    # @items = Assessment.find(params[:id]).item
    @sales = Sale.all
    @sales_hash = {}
    @sales.each do |s|
      @sales_hash[s.product.name] = s.quantity
    end
  end

  action_item :chart do
    link_to 'View Chart', chart_admin_sales_path
  end

  index do
    id_column
    column :product
    column :quantity
    column :price
    actions
  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :quantity, :product_id, :price
  #
  # or
  #
  # permit_params do
  #   permitted = [:quantity, :product_id, :price]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
