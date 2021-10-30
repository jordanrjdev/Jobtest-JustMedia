# == Schema Information
#
# Table name: stores
#
#  id         :bigint           not null, primary key
#  name       :string
#  address    :text
#  number     :string
#  zip_code   :string
#  city       :string
#  country    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Store < ApplicationRecord
  validates :name, :address, :number, :city, :country, :zip_code, presence: true

  has_many :has_stores
  has_many :products, through: :has_stores
end
