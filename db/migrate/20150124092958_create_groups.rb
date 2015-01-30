class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string 	 :school
      t.string 	 :name
      t.integer	 :teacher_id
      t.integer	 :student_id
      t.string	 :ta

      t.timestamps null: false
    end
  end
end
