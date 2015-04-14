class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|
      t.integer :group_id
      t.string :title
      t.date :assigned
      t.datetime :due
      t.string :instructions

      t.timestamps null: false
    end
  end
end
