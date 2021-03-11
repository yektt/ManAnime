class AddIDsToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :user_id, :integer
    add_column :reviews, :content_id, :integer
  end
end
