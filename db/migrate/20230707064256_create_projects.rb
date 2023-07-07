class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :location
      t.integer :client_id

      t.timestamps
    end
    add_index :projects, :client_id
  end
end
