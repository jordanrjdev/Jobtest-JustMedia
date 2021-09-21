class Store < ApplicationRecord
  validates :name, :address, :number, :city, :country, :zip_code, presence: true
end
