class Service < ActiveRecord::Base
  validates :make, :model, :year, :service_type, :date, :price, presence: true
end
