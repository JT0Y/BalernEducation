class Student < ActiveRecord::Base
   has_many :teachers, through: :groups
   belongs_to :group
   
   belongs_to :appointments
end
