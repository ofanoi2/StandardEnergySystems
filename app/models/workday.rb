class Workday < ApplicationRecord
   has_many :buildings, :dependent => :destroy
   has_many :notes, dependent: :destroy

   #default_scope {order title: :asc}
   
   def method_name
   	
   end
end
