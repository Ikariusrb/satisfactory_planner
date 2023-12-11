# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
if AdminUser.count.zero? && (Rails.env.development? || Rails.env.test?)
  AdminUser.create!(
    email: 'admin@example.com',
    password: 'password',
    password_confirmation: 'password'
  )
end
user = AdminUser.find_by(email: 'admin@example.com')

if Item.count.zero?
  ItemScraper.new.call.each do |item_name|
    Item.new(name: item_name).save!
  end
end

default_plan_attrs = { name: 'default', admin_user: user }.freeze
Plan.create!(**default_plan_attrs) if Plan.count.zero?
plan = Plan.find_by(**default_plan_attrs)

default_location_attrs = { name: 'default_loc', plan: }.freeze
Location.create!(**default_location_attrs) if Location.count.zero?
location = Location.find_by(**default_location_attrs)

if ProductionStage.count.zero?
  ActiveRecord::Base.transaction do
    prod_stg_one = ProductionStage.create!(name: 'Production Stage One', plan:, location:)
    prod_stg_two = ProductionStage.create!(name: 'Production Stage Two', plan:, location:)
    i_cop_ore = Item.find_by(name: 'Copper Ore')
    prod_stg_one_output_one = ProductionStageOutput.create!(production_stage: prod_stg_one, item: i_cop_ore, rate: 600.0)
    prod_stg_two_input_one = ProductionStageInput.create!(production_stage: prod_stg_two, item: i_cop_ore, rate: 400.0)
    prod_conn_one = ProductionStageConnection.create!(source: prod_stg_one_output_one, destination: prod_stg_two_input_one)
  end
end
