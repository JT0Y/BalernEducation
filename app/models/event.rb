class Event < ActiveRecord::Base

	belongs_to :group
	belongs_to :teacher
	has_many :students
end
