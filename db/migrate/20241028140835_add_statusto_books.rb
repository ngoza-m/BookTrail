class AddStatustoBooks < ActiveRecord::Migration[7.2]
  def change
    add_column :books, :status, :string
  end
end
