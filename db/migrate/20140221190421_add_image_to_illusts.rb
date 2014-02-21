class AddImageToIllusts < ActiveRecord::Migration
  def change
    add_column :illusts, :image, :string
  end
end
