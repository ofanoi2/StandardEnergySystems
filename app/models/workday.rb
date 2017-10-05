class Workday < ApplicationRecord
   has_many :buildings, :dependent => :destroy
end
