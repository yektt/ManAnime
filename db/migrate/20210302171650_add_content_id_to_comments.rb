class AddContentIdToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :content_id, :integer
  end
end
