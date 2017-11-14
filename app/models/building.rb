class Building < ApplicationRecord
  belongs_to :workday
  has_many :meters
end
