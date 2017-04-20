class CreateFavoriteArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :favorite_artists do |t|
      t.string :results

      t.timestamps
    end
  end
end
