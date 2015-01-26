class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string 	:ename
      t.string 	:cname
      t.date 		:dob
      t.integer :group_id      

      t.timestamps null: false
    end
  end
end
