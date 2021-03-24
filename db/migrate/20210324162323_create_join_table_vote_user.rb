class CreateJoinTableVoteUser < ActiveRecord::Migration[5.1]
  def change
    create_join_table :votes, :users do |t|
      # t.index [:vote_id, :user_id]
      # t.index [:user_id, :vote_id]
    end
  end
end
