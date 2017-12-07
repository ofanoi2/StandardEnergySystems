class Building < ApplicationRecord
  belongs_to :workday
  has_many :meters, dependent: :destroy

  scope :get_completed_count, ->(value){where("completed = :value", value: value).count}
end
