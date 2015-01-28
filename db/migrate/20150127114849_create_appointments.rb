class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :start
      t.integer  :teacher_id
      t.integer  :group_id
      t.string 	 :ta
      t.text     :note

      t.timestamps null: false
    end
  end
end
