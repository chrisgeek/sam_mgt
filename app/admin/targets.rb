ActiveAdmin.register Target do

  permit_params :value, :due_date, :user_id, :status

  index do
    column :user
    column :due_date
    column :value
    column :status
    actions
  end

  form do |f|
    f.inputs do
      f.input :value
      f.input :due_date
      f.input :status, collection: Target.valid_status unless f.object.new_record?
      f.input :user,
              label: 'assign to',
              collection: User.persons,
              prompt: 'select person',
              include_blank: false,
              required: false

    end
    f.actions
  end
 
end
