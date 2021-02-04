class AddLinkToWatchOrReadToContent < ActiveRecord::Migration[5.1]
  def change
    add_column :contents, :link_to_watch_or_read, :string
  end
end
