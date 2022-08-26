class RemoveImageFromDolls < ActiveRecord::Migration[7.0]
  def change
    remove_column :dolls, :image, :string
  end
end
