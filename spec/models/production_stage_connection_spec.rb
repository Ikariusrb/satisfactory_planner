# == Schema Information
#
# Table name: production_stage_connections
#
#  id             :bigint           not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  destination_id :bigint
#  source_id      :bigint
#
# Indexes
#
#  index_production_stage_connections_on_destination_id  (destination_id)
#  index_production_stage_connections_on_source_id       (source_id)
#
require 'rails_helper'

RSpec.describe ProductionStageConnection, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
