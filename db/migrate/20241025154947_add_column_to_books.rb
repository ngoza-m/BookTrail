class AddColumnToBooks < ActiveRecord::Migration[7.2]
  def change
    add_column :books, :img_url, :string
    add_reference :books, :user, null: false, foreign_key: true
    add_reference :books, :goal, null: false, foreign_key: true
  end
end
