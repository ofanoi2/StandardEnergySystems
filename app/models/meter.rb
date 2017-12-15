class Meter < ApplicationRecord
  belongs_to :building

  default_scope {order sequence_number: :asc}

  scope :get_meter_number, ->(meter_number){where("meter_number = :meter_number", meter_number: meter_number)}

  scope :get_previous_read, ->(meter_number, building_id){where("meter_number = :meter_number and building_id = :building_id", meter_number: meter_number, building_id: building_id ).pluck(:previous_read)}

  # after_save { self.update(:units => set_units)}
    
  after_initialize :set_units  

  def set_units
    self.units = self.current_read.to_i - self.previous_read.to_i
  end
  
  
  
  # def current_read_value
  # 	if current_read.nil?
  # 		errors.add(:current_read, " cannot be null values!")
  # 	elsif current_read - previous_read
  # 	end		
  # end
   
end
