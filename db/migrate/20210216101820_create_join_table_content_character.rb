class CreateJoinTableContentCharacter < ActiveRecord::Migration[5.1]
  def change
    create_join_table :contents, :characters do |t|
      # t.index [:content_id, :character_id]
      # t.index [:character_id, :content_id]
    end
  end
end
