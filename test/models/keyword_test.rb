# == Schema Information
#
# Table name: keywords
#
#  id          :bigint           not null, primary key
#  name        :string
#  category_id :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class KeywordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
