class RemoveLinkToWatchFromContent < ActiveRecord::Migration[5.1]
  def change
    remove_column :contents, :link_to_watch, :string
  end
end
