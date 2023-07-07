class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.string :target_date
      t.integer :project_id

      t.timestamps
    end
    add_index :tasks, :project_id
  end
end
