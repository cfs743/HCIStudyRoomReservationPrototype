class TimeAvailabilityGrid < BaseGrid
  include Datagrid

  scope do
    TimeAvailability
  end

 
  filter(:ta_day, :enum, 
    :select => lambda {TimeAvailability.select {|p| p.ta_date >= Date.today} .map {|p| [p.ta_day]}.uniq},
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
      content_tag(:td, content_tag(:a, content_tag(:div, value, class:"availability-#{value}"), href:reservation_new_url), class:"availability-#{value}")
    end
  end

def update_date
  self.ta_date = self.ta_date.advance( :day => +1)
end

end