class RoomAvailabilityGrid < BaseGrid
  include Datagrid

  scope do
    RoomAvailability
  end

  filter(:ra_date, :date, :header => "Date", :range => false, :default => DateTime.current.midnight)

  column(:room, :mandatory => true) do |model|
    format(model.room) do |value|
      content_tag(:td, value, class:"room")
    end
  end

  column(:_12_am, :mandatory => true) do |model|
    format(model._12_am) do |value|
      content_tag(:td, content_tag(:a, 
                                   content_tag(:div, 
                                               value, 
                                               class:"availability-#{value}"), 
                                   href:reservation_new_url(:reservation => {:start_date_time => :ra_date,
                                                                             :room => :room})), 
                                   class:"availability-#{value}")
    end
  end

  column(:_1_am, :mandatory => true) do |model|
    format(model._1_am) do |value|
      content_tag(:td, content_tag(:a, content_tag(:div, value, class:"availability-#{value}"), href:reservation_new_url), class:"availability-#{value}")
    end
  end
  
  column(:_2_am, :mandatory => true) do |model|
    format(model._2_am) do |value|
      content_tag(:td, content_tag(:a, content_tag(:div, value, class:"availability-#{value}"), href:reservation_new_url), class:"availability-#{value}")
    end
  end
  
  column(:_3_am, :mandatory => true) do |model|
    format(model._3_am) do |value|
      content_tag(:td, content_tag(:a, content_tag(:div, value, class:"availability-#{value}"), href:reservation_new_url), class:"availability-#{value}")
    end
  end
  
  column(:_4_am, :mandatory => true) do |model|
    format(model._4_am) do |value|
      content_tag(:td, content_tag(:a, content_tag(:div, value, class:"availability-#{value}"), href:reservation_new_url), class:"availability-#{value}")
    end
  end
  
  column(:_5_am, :mandatory => true) do |model|
    format(model._5_am) do |value|
      content_tag(:td, content_tag(:a, content_tag(:div, value, class:"availability-#{value}"), href:reservation_new_url), class:"availability-#{value}")
    end
  end
  
  column(:_6_am, :mandatory => true) do |model|
    format(model._6_am) do |value|
      content_tag(:td, content_tag(:a, content_tag(:div, value, class:"availability-#{value}"), href:reservation_new_url), class:"availability-#{value}")
    end
  end
  
  column(:_7_am, :mandatory => true) do |model|
    format(model._7_am) do |value|
      content_tag(:td, content_tag(:a, content_tag(:div, value, class:"availability-#{value}"), href:reservation_new_url), class:"availability-#{value}")
    end
  end
  
  column(:_8_am, :mandatory => true) do |model|
    format(model._8_am) do |value|
      content_tag(:td, content_tag(:a, content_tag(:div, value, class:"availability-#{value}"), href:reservation_new_url), class:"availability-#{value}")
    end
  end
  
  column(:_9_am, :mandatory => true) do |model|
    format(model._9_am) do |value|
      content_tag(:td, content_tag(:a, content_tag(:div, value, class:"availability-#{value}"), href:reservation_new_url), class:"availability-#{value}")
    end
  end
  
  column(:_10_am, :mandatory => true) do |model|
    format(model._10_am) do |value|
      content_tag(:td, content_tag(:a, content_tag(:div, value, class:"availability-#{value}"), href:reservation_new_url), class:"availability-#{value}")
    end
  end
  
  column(:_11_am, :mandatory => true) do |model|
    format(model._11_am) do |value|
      content_tag(:td, content_tag(:a, content_tag(:div, value, class:"availability-#{value}"), href:reservation_new_url), class:"availability-#{value}")
    end
  end
  
  column(:_12_pm, :mandatory => true) do |model|
    format(model._12_pm) do |value|
      content_tag(:td, content_tag(:a, content_tag(:div, value, class:"availability-#{value}"), href:reservation_new_url), class:"availability-#{value}")
    end
  end
  
  column(:_1_pm, :mandatory => true) do |model|
    format(model._1_pm) do |value|
      content_tag(:td, content_tag(:a, content_tag(:div, value, class:"availability-#{value}"), href:reservation_new_url), class:"availability-#{value}")
    end
  end
  
  column(:_2_pm, :mandatory => true) do |model|
    format(model._2_pm) do |value|
      content_tag(:td, content_tag(:a, content_tag(:div, value, class:"availability-#{value}"), href:reservation_new_url), class:"availability-#{value}")
    end
  end
  
  column(:_3_pm, :mandatory => true) do |model|
    format(model._3_pm) do |value|
      content_tag(:td, content_tag(:a, content_tag(:div, value, class:"availability-#{value}"), href:reservation_new_url), class:"availability-#{value}")
    end
  end
  
  column(:_4_pm, :mandatory => true) do |model|
    format(model._4_pm) do |value|
      content_tag(:td, content_tag(:a, content_tag(:div, value, class:"availability-#{value}"), href:reservation_new_url), class:"availability-#{value}")
    end
  end
  
  column(:_5_pm, :mandatory => true) do |model|
    format(model._5_pm) do |value|
      content_tag(:td, content_tag(:a, content_tag(:div, value, class:"availability-#{value}"), href:reservation_new_url), class:"availability-#{value}")
    end
  end
  
  column(:_6_pm, :mandatory => true) do |model|
    format(model._6_pm) do |value|
      content_tag(:td, content_tag(:a, content_tag(:div, value, class:"availability-#{value}"), href:reservation_new_url), class:"availability-#{value}")
    end
  end
  
  column(:_7_pm, :mandatory => true) do |model|
    format(model._7_pm) do |value|
      content_tag(:td, content_tag(:a, content_tag(:div, value, class:"availability-#{value}"), href:reservation_new_url), class:"availability-#{value}")
    end
  end
  
  column(:_8_pm, :mandatory => true) do |model|
    format(model._8_pm) do |value|
      content_tag(:td, content_tag(:a, content_tag(:div, value, class:"availability-#{value}"), href:reservation_new_url), class:"availability-#{value}")
    end
  end
  
  column(:_9_pm, :mandatory => true) do |model|
    format(model._9_pm) do |value|
      content_tag(:td, content_tag(:a, content_tag(:div, value, class:"availability-#{value}"), href:reservation_new_url), class:"availability-#{value}")
    end
  end
  
  column(:_10_pm, :mandatory => true) do |model|
    format(model._10_pm) do |value|
      content_tag(:td, content_tag(:a, content_tag(:div, value, class:"availability-#{value}"), href:reservation_new_url), class:"availability-#{value}")
    end
  end
  
  column(:_11_pm, :mandatory => true) do |model|
    format(model._11_pm) do |value|
      content_tag(:td, content_tag(:a, content_tag(:div, value, class:"availability-#{value}"), href:reservation_new_url), class:"availability-#{value}")
    end
  end
  

end