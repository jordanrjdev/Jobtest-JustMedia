class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :has_categories
  has_many :products, through: :has_categories

end
