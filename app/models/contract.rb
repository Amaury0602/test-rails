class Contract < ApplicationRecord
  belongs_to :service_one, class_name: "Service"
  belongs_to :service_two, class_name: "Service"
  validates :service_one, presence: true
  validates :service_two, presence: true
end
