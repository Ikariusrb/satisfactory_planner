class CreateProductionStageConnections < ActiveRecord::Migration[7.1]
  def change
    create_table :production_stage_connections do |t|
      t.references :source, index: true
      t.references :destination, index: true

      t.timestamps
    end
  end
end
