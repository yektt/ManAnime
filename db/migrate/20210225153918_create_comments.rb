class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :comment_body
      t.integer :upvote_number
      t.integer :downvote_number

      t.timestamps
    end
  end
end
