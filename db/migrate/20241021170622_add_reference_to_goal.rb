class AddReferenceToGoal < ActiveRecord::Migration[7.2]
  def change
    add_reference :goals, :user, null: false, foreign_key: true
  end
end
