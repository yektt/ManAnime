class AddAvatarToCharacter < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :avatar_url, :string
  end
end
