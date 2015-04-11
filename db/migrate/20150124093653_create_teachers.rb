class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :ename
      t.string :cname
      t.date :dob
      t.integer :group_id

      t.timestamps null: false
    end
  end
end
