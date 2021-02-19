class RemoveRatingFromContent < ActiveRecord::Migration[5.1]
  def change
    remove_column :contents, :rating, :integer
  end
end
