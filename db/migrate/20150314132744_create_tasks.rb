class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.string :due_date
      t.string :due_time
      t.string :status
      t.string :recipients
      t.integer :user_id
      t.integer :tasket_id

      t.timestamps null: false
    end
  end
end
