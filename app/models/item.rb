# == Schema Information
#
# Table name: items
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  unique_items  (name) UNIQUE
#
class Item < ApplicationRecord
  def self.name_like(match_str)
    Item.where('name ILIKE :name', name: "%#{match_str}%")
  end
end
