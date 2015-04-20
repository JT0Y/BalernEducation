class CreateLessonPlans < ActiveRecord::Migration
  def change
    create_table :lesson_plans do |t|
      t.string 	 :level
      t.integer  :class_number

      t.timestamps null: false
    end
  end
end
