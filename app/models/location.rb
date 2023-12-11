# == Schema Information
#
# Table name: locations
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  plan_id    :bigint           not null
#
# Indexes
#
#  index_locations_on_plan_id           (plan_id)
#  index_locations_on_plan_id_and_name  (plan_id,name) UNIQUE
#
class Location < ApplicationRecord
  belongs_to :plan
end
