class CreateProductionStageOuputs < ActiveRecord::Migration[7.1]
  def change
    create_table :production_stage_outputs do |t|
      t.belongs_to :production_stage, null: false
      t.belongs_to :item, null: false
      t.decimal :rate, null: false, precision: 9, scale: 3

      t.timestamps
    end
  end
end
