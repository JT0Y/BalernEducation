class Appointment < ActiveRecord::Base
	validates :start, presence: true
	validates :teacher_id, presence: true
	validates :group_id, presence: true
	validates :ta, presence: true

	belongs_to :group
	belongs_to :teacher
	has_many :students

	default_scope -> { order(group_id: :asc) }

end
