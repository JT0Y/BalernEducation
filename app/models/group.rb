class Group < ActiveRecord::Base
	belongs_to :teacher
	has_many :students
end
