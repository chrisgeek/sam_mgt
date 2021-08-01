class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :activity_type
      t.string :name
      t.string :activity_for
      t.date :due_date
      t.string :detail
      t.string :leader
      t.string :member

      t.timestamps
    end
  end
end
