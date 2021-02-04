class AddCategoryToContent < ActiveRecord::Migration[5.1]
  def change
    add_column :contents, :category, :string
  end
end
