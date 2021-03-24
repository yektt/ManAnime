class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.string :vote_type
      t.string :string
      t.string :comment
      t.string :referances

      t.timestamps
    end
  end
end
