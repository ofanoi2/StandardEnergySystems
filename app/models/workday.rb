class Workday < ApplicationRecord
   has_many :buildings, :dependent => :destroy
   has_many :notes, dependent: :destroy

   def method_name
   	
   end
end
