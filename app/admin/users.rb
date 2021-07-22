ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :role
    column :created_at
    actions
  end

  filter :email
  filter :created_at

  form do |f|
    @roles = %w[admin manager person]
    @roles.push('admin') if current_user.admin?

    f.inputs do
      f.input :email
      f.input :role, as: :select, collection: @roles, include_blank: false, prompt: 'Select Role'
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  permit_params :email, :password, :password_confirmation, :role
end
