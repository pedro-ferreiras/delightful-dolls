class AddDescriptionToDolls < ActiveRecord::Migration[7.0]
  def change
    add_column :dolls, :description, :text
  end
end
