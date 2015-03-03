class Appointment < ActiveRecord::Base
	extend SimpleCalendar
  has_calendar
	validates :starts_at, presence: true
	validates :teacher_id, presence: true
	validates :group_id, presence: true

	belongs_to :group
	belongs_to :teacher
	has_many :students

	default_scope {order('starts_at DESC')}
end
