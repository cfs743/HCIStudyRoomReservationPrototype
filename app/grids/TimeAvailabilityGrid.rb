class TimeAvailabilityGrid < BaseGrid
  include Datagrid

  scope do
    TimeAvailability
  end

 
  filter(:ta_day, :enum, 
    :select => lambda {TimeAvailability.where("time_availabilities.ta_date >= ?", Date.today).where("time_availabilities.ta_date <= ?", Date.parse("2021-04-26")).map {|p| [p.ta_day]}.uniq},
    :type => :integer,
    :header => "Start Date: April",
    :range => false, 
    :default => lambda {Date.today.day.to_i}
  ) 

  column(:ta_time, :header => "Time", :mandatory => true) do |model|
    format(model.ta_time) do |value|
      content_tag(:td, value.strftime("%l%p"), class:"ta_time")
    end
  end

  column(:rooms_reserved, :header => "Availability", :mandatory => true) do |model|
    format(model.rooms_reserved) do |value|
      content_tag(:td, content_tag(:a, content_tag(:div, value, class:"availability-#{value}"), href:reservation_new_url(:reservation => {:start_date_time => DateTime.new(2021, 3, model.ta_day, model.ta_time.hour),
      :end_date_time => DateTime.new(2021, 3, model.ta_day, model.ta_time.hour + 1),
      :room => 1})), class:"availability-#{value}")
    end
  end

def update_date
  self.ta_date = self.ta_date.advance( :day => +1)
end

end