require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'time_availability_seed.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
    t = TimeAvailability.new

    t.ta_date_time = row['ta_date_time']
    t.rooms_available = row['rooms_available']
    t.rooms_reserved = row['rooms_reserved']
    
    t.save
end
puts "There are now #{TimeAvailability.count} rows in the time availability table"

csv_text = File.read(Rails.root.join('lib', 'seeds', 'room_availability_seed.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
    r = RoomAvailability.new

    r.ra_date = row['ra_date']
    r.room = row['room']
    r._12_am = row['_12_am']
    r._1_am = row['_1_am']
    r._2_am = row['_2_am']
    r._3_am = row['_3_am']
    r._4_am = row['_4_am']
    r._5_am = row['_5_am']
    r._6_am = row['_6_am']
    r._7_am = row['_7_am']
    r._8_am = row['_8_am']
    r._9_am = row['_9_am']
    r._10_am = row['_10_am']
    r._11_am = row['_11_am']
    r._12_pm = row['_12_pm']
    r._1_pm = row['_1_pm']
    r._2_pm = row['_2_pm']
    r._3_pm = row['_3_pm']
    r._4_pm = row['_4_pm']
    r._5_pm = row['_5_pm']
    r._6_pm = row['_6_pm']
    r._7_pm = row['_7_pm']
    r._8_pm = row['_8_pm']
    r._9_pm = row['_9_pm']
    r._10_pm = row['_10_pm']
    r._11_pm = row['_11_pm']
    
    r.save
end
puts "There are now #{RoomAvailability.count} rows in the room availability table"