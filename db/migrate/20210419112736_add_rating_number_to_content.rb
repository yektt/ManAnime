class AddRatingNumberToContent < ActiveRecord::Migration[5.1]
  def change
    add_column :contents, :rating_number, :integer
  end
end
