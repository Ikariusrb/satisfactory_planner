# == Schema Information
#
# Table name: production_stage_inputs
#
#  id                  :bigint           not null, primary key
#  rate                :decimal(9, 3)    not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  item_id             :bigint           not null
#  production_stage_id :bigint           not null
#
# Indexes
#
#  index_production_stage_inputs_on_item_id              (item_id)
#  index_production_stage_inputs_on_production_stage_id  (production_stage_id)
#
class ProductionStageInput < ApplicationRecord
end
