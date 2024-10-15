class CreateBooks < ActiveRecord::Migration[7.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.date :pub_date
      t.integer :pages

      t.timestamps
    end
  end
end
