class AddAttachmentImageToLessonPlans < ActiveRecord::Migration
  def self.up
    change_table :lesson_plans do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :lesson_plans, :image
  end
end
