class AddDateToBooks < ActiveRecord::Migration[7.2]
  def change
    add_column :books, :date_finished, :date
  end
end
