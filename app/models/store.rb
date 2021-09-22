class Store < ApplicationRecord
  validates :name, :address, :number, :city, :country, :zip_code, presence: true

  has_many :has_stores
  has_many :products, through: :has_stores
end
