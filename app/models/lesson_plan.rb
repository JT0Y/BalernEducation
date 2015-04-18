class LessonPlan < ActiveRecord::Base
	belongs_to :user
	
has_attached_file :image
validates_attachment_presence :image
validates_attachment_content_type :image, :content_type => [ 'application/pdf','text/plain']
end