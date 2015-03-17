class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string 	:ename
      t.string 	:cname
			t.string 	:emergency_contact
			t.string 	:email
			t.string 	:address
      t.date 		:dob
      t.date 		:contract_start
      t.integer :contract_length
      t.integer :group_id      

      t.timestamps null: false
    end
  end
end
