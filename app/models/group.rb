class Group < ActiveRecord::Base
	validates :name, uniqueness: true

	belongs_to :teacher
	has_many :students
	
	has_many :appointments
end
