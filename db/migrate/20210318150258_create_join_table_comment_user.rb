class CreateJoinTableCommentUser < ActiveRecord::Migration[5.1]
  def change
    create_join_table :comments, :users do |t|
      # t.index [:comment_id, :user_id]
      # t.index [:user_id, :comment_id]
    end
  end
end
