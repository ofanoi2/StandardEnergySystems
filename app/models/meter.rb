class Meter < ApplicationRecord
  belongs_to :building

  default_scope {order sequence_number: :asc}

  attr_accessor :difference

  before_save :set_units, :set_difference

  # after_save { self.update(:units => set_units)}

  # scope :get_meter_number, ->(meter_number){where("meter_number = :meter_number", meter_number: meter_number)}

  validates :current_read, presence: true, if: :noread_yn?, numericality: { only_integer: true }

  validate :check_current_read_value

  validates :current_read_demand, presence: true, if: :demand_yn? ,format: { with: /\A\d+(?:\.\d{2})?\z/ }, numericality: { greater_than: 0, less_than: 1000 }

  scope :get_meter_location, ->(meter_number){unscoped.where("sequence_number is not null and meter_number = :meter_number", meter_number: meter_number).pluck(:meter_location)}
  
  scope :get_previous_read, ->(meter_number, building_id){unscoped.where("meter_number = :meter_number and building_id = :building_id", meter_number: meter_number, building_id: building_id ).order(created_at: :desc).pluck(:current_read)}

  scope :get_difference, ->(meter_number, building_id){select("(previous_read - current_read) as difference").unscoped.where("meter_number = :meter_number and building_id = :building_id", meter_number: meter_number, building_id: building_id ).order(created_at: :desc).first}

  scope :get_meter_id, ->(meter_number, building_id){unscoped.where("meter_number = :meter_number and building_id = :building_id", meter_number: meter_number, building_id: building_id ).order(created_at: :asc).pluck(:id)}

  scope :get_meter_number, ->(id, building_id){unscoped.where("id= :id and building_id = :building_id", id: id, building_id: building_id ).pluck(:meter_number)}

  scope :get_count_meters_per_building, ->(building_id){unscoped.where("building_id = :building_id and sequence_number is not null", building_id: building_id).count}
 
  scope :get_count_meters_readings_entered, ->(building_id){unscoped.where("building_id = :building_id and created_at >= :date", building_id: building_id, date: DateTime.now.midnight + 5.hours).count}

  def noread_yn?
    self.noread_yn == "false"
  end
  
  def demand_yn?
    self.demand_yn
  end

  def self.with_difference
    select("(current_read - previous_read) as difference")
  end

  def usage
    @difference.to_f /= self.units.to_f   
  end

  def check_current_read_value
    if current_read.nil?
      errors.add(:current_read, " cannot be null values!")
    elsif current_read < previous_read
      errors.add(:current_read, " is less than previous read. Please check read!")
    elsif @difference.to_f < 0.5 
      errors.add(:current_read, "Check again")
    elsif @difference.to_f > 0.5
      errors.add(:current_read, "Check again")
      errors.add(previous_read)
    end   
  end

  private
    def set_units
      self.units = self.current_read.to_i - self.previous_read.to_i
    end
  
    def set_difference
      @difference = self.get_difference(self.meter_number, self.building_id)
    end
end