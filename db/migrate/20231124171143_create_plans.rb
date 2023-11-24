class CreatePlans < ActiveRecord::Migration[7.1]
  def change
    create_table :plans do |t|
      t.string :name, null: false, index: { unique: true, name: 'unique_plans' }
      t.belongs_to :admin_user

      t.timestamps
    end
    add_index(:plans, [:admin_user_id, :name], unique: true)
  end
end
