class Service < ApplicationRecord
  has_many :reviews
  validates :name, :description, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }

end
