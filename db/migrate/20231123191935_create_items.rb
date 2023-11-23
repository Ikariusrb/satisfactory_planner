class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :name, null: false, index: { unique: true, name: 'unique_items' }

      t.timestamps
    end
  end
end
