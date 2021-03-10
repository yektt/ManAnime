class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :review_body
      t.integer :rating
      t.string :categories

      t.timestamps
    end
  end
end
