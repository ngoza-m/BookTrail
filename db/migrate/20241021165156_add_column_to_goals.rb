class AddColumnToGoals < ActiveRecord::Migration[7.2]
  def change
    add_column :goals, :year, :integer
  end
end
