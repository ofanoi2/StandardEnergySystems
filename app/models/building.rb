class Building < ApplicationRecord
  attr_accessor :meter_number, :page

  belongs_to :workday
  has_many :meters, dependent: :destroy

  #scope :get_completed_count, ->{where("complete = :value", value: true).count}

  def get_completed
  	Building.where("complete = ':value' and building_number in (:page)", value: true, page: page).count
  end


end