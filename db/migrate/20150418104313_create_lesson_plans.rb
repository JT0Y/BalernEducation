class CreateLessonPlans < ActiveRecord::Migration
  def change
    create_table :lesson_plans do |t|
      t.integer :group_id
      t.string :class_number

      t.timestamps null: false
    end
  end
end
