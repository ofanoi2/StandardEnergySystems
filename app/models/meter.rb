class Meter < ApplicationRecord
  belongs_to :building

  default_scope {order sequence_number: :asc}

  scope :get_completed_count, ->(value){where("completed = :value", value: value).count}
end
