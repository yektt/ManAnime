class AddCommentToVote < ActiveRecord::Migration[5.1]
  def change
    add_column :votes, :comment_id, :integer
  end
end
