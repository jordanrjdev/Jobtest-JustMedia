# == Schema Information
#
# Table name: has_categories
#
#  id          :bigint           not null, primary key
#  product_id  :bigint           not null
#  category_id :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class HasCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
