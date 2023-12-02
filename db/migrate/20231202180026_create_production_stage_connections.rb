class CreateProductionStageConnections < ActiveRecord::Migration[7.1]
  def change
    create_table :production_stage_connections do |t|
      t.references :input, index: true, foreign_key: { to_table: :production_stage_ouputs }
      t.references :output, index: true, foreign_key: { to_table: :production_stage_inputs }

      t.timestamps
    end
  end
end
