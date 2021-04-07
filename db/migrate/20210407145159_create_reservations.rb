class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :subject
      t.datetime :start_date_time
      t.datetime :end_date_time
      t.integer :room

      t.timestamps
    end
  end
end
