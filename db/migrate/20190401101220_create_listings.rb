class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.integer :price
      t.string :image
      t.string :detail
      t.string :brand
      t.string :size
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
