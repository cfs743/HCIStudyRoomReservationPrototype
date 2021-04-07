class CreateRoomAvailabilities < ActiveRecord::Migration[6.1]
  def change
    create_table :room_availabilities do |t|
      t.datetime :ra_date
      t.integer :room
      t.boolean :_12_am
      t.boolean :_1_am
      t.boolean :_2_am
      t.boolean :_3_am
      t.boolean :_4_am
      t.boolean :_5_am
      t.boolean :_6_am
      t.boolean :_7_am
      t.boolean :_8_am
      t.boolean :_9_am
      t.boolean :_10_am
      t.boolean :_11_am
      t.boolean :_12_pm
      t.boolean :_1_pm
      t.boolean :_2_pm
      t.boolean :_3_pm
      t.boolean :_4_pm
      t.boolean :_5_pm
      t.boolean :_6_pm
      t.boolean :_7_pm
      t.boolean :_8_pm
      t.boolean :_9_pm
      t.boolean :_10_pm
      t.boolean :_11_pm

      t.timestamps
    end
  end
end
