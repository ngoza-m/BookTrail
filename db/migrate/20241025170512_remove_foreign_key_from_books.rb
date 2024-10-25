class RemoveForeignKeyFromBooks < ActiveRecord::Migration[7.2]
  def change
    remove_reference :books, :goal
  end
end
