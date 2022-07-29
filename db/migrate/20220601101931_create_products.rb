class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.references :category, null: false, foreign_key: true
      t.string :pname
      t.string :image
      t.string :price

      t.timestamps
    end
  end
end
