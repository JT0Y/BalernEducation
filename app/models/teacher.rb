class Teacher < ActiveRecord::Base
	validates :ename, presence: true
	validates :cname, presence: true
	validates :dob, presence: true

	has_many :students, through: :groups
	has_many :groups
	has_many :events
end
