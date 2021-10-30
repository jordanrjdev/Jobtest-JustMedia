# == Schema Information
#
# Table name: has_stores
#
#  id         :bigint           not null, primary key
#  product_id :bigint           not null
#  store_id   :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class HasStore < ApplicationRecord
  belongs_to :product
  belongs_to :store
end
