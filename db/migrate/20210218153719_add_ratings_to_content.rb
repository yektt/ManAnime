class AddRatingsToContent < ActiveRecord::Migration[5.1]
  def change
    add_column :contents, :rating, :decimal
  end
end
