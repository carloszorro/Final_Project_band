class CreateBands < ActiveRecord::Migration[5.1]
  def change
    create_table :bands do |t|
      t.string :name
      t.integer :price
      t.decimal :rate, precision: 5, scale: 2
      t.string :image_url
      t.integer :genre_id
      t.string :review

      t.timestamps
    end
  end
end
