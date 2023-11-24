# == Schema Information
#
# Table name: plans
#
#  id            :bigint           not null, primary key
#  name          :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  admin_user_id :bigint
#
# Indexes
#
#  index_plans_on_admin_user_id           (admin_user_id)
#  index_plans_on_admin_user_id_and_name  (admin_user_id,name) UNIQUE
#  unique_plans                           (name) UNIQUE
#
require 'rails_helper'

RSpec.describe Plan, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
