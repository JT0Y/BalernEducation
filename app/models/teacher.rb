class Teacher < ActiveRecord::Base
	validates :title, presence: true
	validates :excerpt, presence: true
	validates :content, presence: true

	has_many :students, through: :groups
	has_many :groups
	has_many :appointments
end
