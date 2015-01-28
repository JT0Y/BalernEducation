class CreateInqueries < ActiveRecord::Migration
  def change
    create_table :inqueries do |t|
      t.string 	:name
      t.string 	:email
      t.string 	:phone
      t.text 		:message      

      t.timestamps null: false
    end
  end
end
