class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.references :company, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :phone_no
      t.string :email
      t.string :company_name

      t.timestamps
    end
  end
end
