class Meter < ApplicationRecord
  belongs_to :building

  default_scope {order sequence_number: :asc, meter_number: :asc}

  scope :get_meter_number, ->(meter_number){where("meter_number = :meter_number", meter_number: meter_number)}

  scope :get_previous_read, ->(meter_number){where("meter_number = :meter_number", meter_number: meter_number).pluck(:previous_read)}
   
end
