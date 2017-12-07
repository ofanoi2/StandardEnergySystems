class Workday < ApplicationRecord
   has_many :buildings, dependent: :destroy
   has_many :notes, dependent: :destroy

   #default_scope {order title: :asc}
   
   scope :get_completed_count, ->(value){where("completed = :value", value: value).count}

end
