class Product < ApplicationRecord
  validates :name, :price, :color, :size, presence: true
  has_many :has_categories
  has_many :categories, through: :has_categories
  has_one_attached :image
  attr_accessor :category_elements

  
  def save_categories 
    return has_categories.destroy_all if category_elements.nil? || category_elements.empty?
    
    has_categories.where.not(category_id: category_elements).destroy_all

    category_elements.each do |category_id|
      HasCategory.find_or_create_by(product: self, category_id: category_id)
    end
  end 

end
