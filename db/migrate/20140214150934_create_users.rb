class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :role, :null => false, :default => 1
      t.string :name, :null => false
      t.string :email, :null => false

      t.timestamps
    end
  end
end
