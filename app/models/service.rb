class Service < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :service_one_contracts, class_name: "Contract", foreign_key: "service_one_id"
  has_many :service_two_contracts, class_name: "Contract", foreign_key: "service_two_id"
  validates :name, :description, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
end
