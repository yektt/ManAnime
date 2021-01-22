class RemoveAvatarUrlFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :avatar_url, :string
  end
end
