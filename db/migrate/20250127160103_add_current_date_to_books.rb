class AddCurrentDateToBooks < ActiveRecord::Migration[7.2]
  def change
    add_column :books, :date, :integer
  end
end
