class CreateJoinTableContentUser < ActiveRecord::Migration[5.1]
  def change
    create_join_table :contents, :users do |t|
      # t.index [:content_id, :user_id]
      # t.index [:user_id, :content_id]
    end
  end
end
