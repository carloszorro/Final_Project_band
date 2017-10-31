class CreateGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :genres do |t|
      t.string :name_genre
      t.string :image_url_genre

      t.timestamps
    end
  end
end
