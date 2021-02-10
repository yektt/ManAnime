class CreateJoinTableGenreContent < ActiveRecord::Migration[5.1]
  def change
    create_join_table :genres, :contents do |t|
      # t.index [:genre_id, :content_id]
      # t.index [:content_id, :genre_id]
    end
  end
end
