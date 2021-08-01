class CreateLeads < ActiveRecord::Migration[6.1]
  def change
    create_table :leads do |t|
      t.string :lead_type
      t.string :salesman
      t.date :due_date
      t.string :detail
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
