class CreateTimeAvailabilities < ActiveRecord::Migration[6.1]
  def change
    create_table :time_availabilities do |t|
      t.date :ta_date
      t.integer :ta_day
      t.time :ta_time
      t.integer :rooms_reserved 
      

      t.timestamps
    end
  end
end
