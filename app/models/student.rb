class Student < ActiveRecord::Base
   has_many :teachers, through: :groups
   belongs_to :group
   
   belongs_to :events

   has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "150x150>" }
	 validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
