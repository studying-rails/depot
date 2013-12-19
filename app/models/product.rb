class Product < ActiveRecord::Base
  validates :title, :description, :price, presence: true
  validates :price, numericality: { only_integer: true }
end
