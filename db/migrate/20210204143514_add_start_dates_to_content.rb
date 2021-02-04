class AddStartDatesToContent < ActiveRecord::Migration[5.1]
  def change
    add_column :contents, :start_date, :datetime
  end
end
