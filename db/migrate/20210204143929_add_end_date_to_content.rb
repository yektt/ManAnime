class AddEndDateToContent < ActiveRecord::Migration[5.1]
  def change
    add_column :contents, :end_date, :datetime
  end
end
