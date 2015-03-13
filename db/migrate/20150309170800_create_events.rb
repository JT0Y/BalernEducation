class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :start_time
      t.datetime :end_time

      t.integer  :teacher_id
      t.integer  :group_id
      t.string 	 :ta

      t.timestamps null: false
    end
  end
end