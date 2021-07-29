class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :phone_no
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
