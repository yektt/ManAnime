class AddTagsToContent < ActiveRecord::Migration[5.1]
  def change
    add_column :contents, :tags, :string
    add_column :contents, :link_to_watch, :string
    add_column :contents, :description, :text
    add_column :contents, :image, :string
    add_column :contents, :volume_or_season_number, :integer
    add_column :contents, :episode_or_chapter_number, :integer
  end
end
