# == Schema Information
#
# Table name: products
#
#  id         :bigint           not null, primary key
#  name       :string
#  color      :string
#  price      :float
#  size       :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Product < ApplicationRecord
  validates :name, :price, :color, :size, presence: true
  has_many :has_categories
  has_many :has_stores
  has_many :stores, through: :has_stores
  has_many :categories, through: :has_categories
  has_one_attached :image
  attr_accessor :category_elements
  attr_accessor :store_elements
  
  def save_stores 
    return has_stores.destroy_all if store_elements.nil? || store_elements.empty?
    has_stores.where.not(store_id: store_elements).destroy_all
    store_elements.each do |store_id|
      HasStore.find_or_create_by(product: self, store_id: store_id)
    end
  end

  def save_categories 
    return has_categories.destroy_all if category_elements.nil? || category_elements.empty?
    has_categories.where.not(category_id: category_elements).destroy_all
    category_elements.each do |category_id|
      HasCategory.find_or_create_by(product: self, category_id: category_id)
    end
  end 

end
