class CreateDolls < ActiveRecord::Migration[7.0]
  def change
    create_table :dolls do |t|
      t.string :name
      t.string :condition
      t.boolean :cursed
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
