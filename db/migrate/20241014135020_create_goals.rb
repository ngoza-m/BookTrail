class CreateGoals < ActiveRecord::Migration[7.2]
  def change
    create_table :goals do |t|
      t.integer :number_of_books
      t.integer :books_read

      t.timestamps
    end
  end
end
