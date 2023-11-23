class CreateLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :locations do |t|
      t.string :name, null: false, index: { unique: true, name: 'unique_locations' }

      t.timestamps
    end
  end
end
