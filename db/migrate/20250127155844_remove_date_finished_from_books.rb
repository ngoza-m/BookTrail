class RemoveDateFinishedFromBooks < ActiveRecord::Migration[7.2]
  def change
    remove_column :books, :date_finished
  end
end
