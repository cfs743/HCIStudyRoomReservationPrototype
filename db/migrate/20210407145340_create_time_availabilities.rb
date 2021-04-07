class CreateTimeAvailabilities < ActiveRecord::Migration[6.1]
  def change
    create_table :time_availabilities do |t|
      t.datetime :ta_date_time
      t.integer :rooms_reserved
      t.integer :rooms_available

      t.timestamps
    end
  end
end
