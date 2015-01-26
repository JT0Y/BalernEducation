class Teacher < ActiveRecord::Base
	has_many :students, through: :groups
	has_many :groups
end
