class Meter < ApplicationRecord
  belongs_to :building

  default_scope {order sequence_number: :asc}

  scope :get_meter_number, ->(meter_number){where("meter_number = :meter_number", meter_number: meter_number)}
   
end
