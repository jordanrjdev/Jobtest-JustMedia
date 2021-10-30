# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :keywords
  has_many :has_categories
  has_many :products, through: :has_categories

  attr_accessor :keywords_string

  def save_keywords 
    return keywords.destroy_all if keywords_string.empty?
    keywords.where.not(name: keywords_string.split(',')).destroy_all
    keywords_string.split(',').each do |keyword|
      if Keyword.find_by(name: keyword).nil?
        Keyword.find_or_create_by(category: self, name: keyword)
      end
    end
  end
end
