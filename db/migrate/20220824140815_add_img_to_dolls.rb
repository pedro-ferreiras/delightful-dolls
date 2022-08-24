class AddImgToDolls < ActiveRecord::Migration[7.0]
  def change
    add_column :dolls, :image, :string
  end
end
