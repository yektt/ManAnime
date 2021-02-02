class CreateAnimes < ActiveRecord::Migration[5.1]
  def change
    create_table :animes do |t|
      t.string :name
      t.datetime :start_date
      t.string :link_to_watch
      t.text :description
      t.integer :season_number
      t.integer :episode_number
      t.string :image

      t.timestamps
    end
  end
end
