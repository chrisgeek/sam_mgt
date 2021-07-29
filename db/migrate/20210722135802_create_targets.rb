class CreateTargets < ActiveRecord::Migration[6.1]
  def change
    create_table :targets do |t|
      t.date :due_date
      t.string :status, default: 'Not Achieved'
      t.string :value
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
