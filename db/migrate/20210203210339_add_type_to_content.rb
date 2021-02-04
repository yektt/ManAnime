class AddTypeToContent < ActiveRecord::Migration[5.1]
  def change
    add_column :contents, :type, :string
  end
end
