require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'time_availability_seed.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
    t = TimeAvailability.new
    t.ta_date = row['Date']
    t.ta_day = row['Day']
    t.ta_time = row['Time']
    t.rooms_reserved = row['Rooms Reserved']
    
    # t.rooms_reserved_1 =  row['2021-04-1']
    # t.rooms_reserved_2 =  row['2021-04-2']
    # t.rooms_reserved_3 =  row['2021-04-3']
    # t.rooms_reserved_4 =  row['2021-04-4']
    # t.rooms_reserved_5 =  row['2021-04-5']
    # t.rooms_reserved_6 =  row['2021-04-6']
    # t.rooms_reserved_7 =  row['2021-04-7']
    # t.rooms_reserved_8 =  row['2021-04-8']
    # t.rooms_reserved_9 =  row['2021-04-9']
    # t.rooms_reserved_10 = row['2021-04-10']
    # t.rooms_reserved_11 = row['2021-04-11']
    # t.rooms_reserved_12 = row['2021-04-12']
    # t.rooms_reserved_13 = row['2021-04-13']
    # t.rooms_reserved_14 = row['2021-04-14']
    # t.rooms_reserved_15 = row['2021-04-15']
    # t.rooms_reserved_16 = row['2021-04-16']
    # t.rooms_reserved_17 = row['2021-04-17']
    # t.rooms_reserved_18 = row['2021-04-18']
    # t.rooms_reserved_19 = row['2021-04-19']
    # t.rooms_reserved_20 = row['2021-04-20']
    # t.rooms_reserved_21 = row['2021-04-21']
    # t.rooms_reserved_22 = row['2021-04-22']
    # t.rooms_reserved_23 = row['2021-04-23']
    # t.rooms_reserved_24 = row['2021-04-24']
    # t.rooms_reserved_25 = row['2021-04-25']
    # t.rooms_reserved_26 = row['2021-04-26']
    # t.rooms_reserved_27 = row['2021-04-27']
    # t.rooms_reserved_28 = row['2021-04-28']
    # t.rooms_reserved_29 = row['2021-04-29']
    # t.rooms_reserved_30 = row['2021-04-30']
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