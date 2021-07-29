class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.integer :quantity
      t.references :product, null: false, foreign_key: true
      t.string :price

      t.timestamps
    end
  end
end
