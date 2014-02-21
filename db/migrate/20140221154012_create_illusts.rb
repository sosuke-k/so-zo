class CreateIllusts < ActiveRecord::Migration
  def change
    create_table :illusts do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
    add_index :illusts, [:user_id, :created_at]
  end
end
