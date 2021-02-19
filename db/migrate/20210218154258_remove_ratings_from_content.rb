class RemoveRatingsFromContent < ActiveRecord::Migration[5.1]
  def change
    remove_column :contents, :rating, :decimal
  end
end
