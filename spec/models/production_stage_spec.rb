# == Schema Information
#
# Table name: production_stages
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  location_id :bigint
#  plan_id     :bigint           not null
#
# Indexes
#
#  index_production_stages_on_location_id       (location_id)
#  index_production_stages_on_plan_id           (plan_id)
#  index_production_stages_on_plan_id_and_name  (plan_id,name) UNIQUE
#
require 'rails_helper'

RSpec.describe ProductionStage, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
