class RemoveTypeFromContent < ActiveRecord::Migration[5.1]
  def change
    remove_column :contents, :type, :string
  end
end
