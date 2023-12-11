class CreateProductionStages < ActiveRecord::Migration[7.1]
  def change
    create_table :production_stages do |t|
      t.string :name, null: false
      t.belongs_to :plan, null: false
      t.belongs_to :location

      t.timestamps
    end
    add_index(:production_stages, [:plan_id, :name], unique: true)
  end
end
