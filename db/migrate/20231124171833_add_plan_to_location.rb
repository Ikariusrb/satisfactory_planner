class AddPlanToLocation < ActiveRecord::Migration[7.1]
  def change
    change_table(:locations) do |t|
      t.belongs_to :plan, null: false
    end
    remove_index(:locations, :name)
    add_index(:locations, [:plan_id, :name], unique: true)
  end
end
