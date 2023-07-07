class CreateBlocks < ActiveRecord::Migration[7.0]
  def change
    create_table :blocks do |t|
      t.string :note
      t.string :start
      t.string :end
      t.integer :user_id

      t.timestamps
    end
    add_index :blocks, :user_id
  end
end
