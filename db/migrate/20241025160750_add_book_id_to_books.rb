class AddBookIdToBooks < ActiveRecord::Migration[7.2]
  def change
    add_column :books, :book_id, :string
  end
end
