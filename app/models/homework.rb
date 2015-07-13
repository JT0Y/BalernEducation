class Homework < ActiveRecord::Base
	validates :group, presence: true

	belongs_to :group
end
