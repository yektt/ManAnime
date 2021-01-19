class AddNameToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :is_blocked, :boolean
    add_column :users, :avatar_url, :string
  end
end
