class Service < ActiveRecord::Base
  validates :make, :model, :year, :service_type, :date, :price, presence: true

  def self.per_page
    5
  end
end
