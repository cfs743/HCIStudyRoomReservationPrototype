class RoomAvailabilityGrid < BaseGrid
  include Datagrid

  scope do
    RoomAvailability
  end

  filter(:ra_date, :date, :header => "Date", :range => false, :default => DateTime.new(2021,04,01))

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
                                   href:reservation_new_url(:reservation => {:start_date_time => model.ra_date.change(:hour => 0),
                                                                             :end_date_time => model.ra_date.change(:hour => 1),
                                                                             :room => model.room})), 
                                   class:"availability-#{value}")
    end
  end
  
  column(:_1_am, :mandatory => true) do |model|
    format(model._1_am) do |value|
      content_tag(:td, content_tag(:a, 
                                   content_tag(:div, 
                                               value, 
                                               class:"availability-#{value}"), 
                                   href:reservation_new_url(:reservation => {:start_date_time => model.ra_date.change(:hour => 1),
                                                                             :end_date_time => model.ra_date.change(:hour => 2),
                                                                             :room => model.room})),
                                  # link_to value, reservation_new_url(:reservation => {:start_date_time => model.ra_date.change(:hour => 1),
                                  #                                            :end_date_time => model.ra_date.change(:hour => 2),
                                  #                                            :room => model.room}), 
                                   class:"availability-#{value}")
    end
  end
  
  column(:_2_am, :mandatory => true) do |model|
    format(model._2_am) do |value|
      content_tag(:td, content_tag(:a, 
                                   content_tag(:div, 
                                               value, 
                                               class:"availability-#{value}"), 
                                   href:reservation_new_url(:reservation => {:start_date_time => model.ra_date.change(:hour => 2),
                                                                             :end_date_time => model.ra_date.change(:hour => 3),
                                                                             :room => model.room})), 
                                   class:"availability-#{value}")
    end
  end
  
  column(:_3_am, :mandatory => true) do |model|
    format(model._3_am) do |value|
      content_tag(:td, content_tag(:a, 
                                   content_tag(:div, 
                                               value, 
                                               class:"availability-#{value}"), 
                                   href:reservation_new_url(:reservation => {:start_date_time => model.ra_date.change(:hour => 3),
                                                                             :end_date_time => model.ra_date.change(:hour => 4),
                                                                             :room => model.room})), 
                                   class:"availability-#{value}")
    end
  end
  
  column(:_4_am, :mandatory => true) do |model|
    format(model._4_am) do |value|
      content_tag(:td, content_tag(:a, 
                                   content_tag(:div, 
                                               value, 
                                               class:"availability-#{value}"), 
                                   href:reservation_new_url(:reservation => {:start_date_time => model.ra_date.change(:hour => 4),
                                                                             :end_date_time => model.ra_date.change(:hour => 5),
                                                                             :room => model.room})), 
                                   class:"availability-#{value}")
    end
  end
  
  column(:_5_am, :mandatory => true) do |model|
    format(model._5_am) do |value|
      content_tag(:td, content_tag(:a, 
                                   content_tag(:div, 
                                               value, 
                                               class:"availability-#{value}"), 
                                   href:reservation_new_url(:reservation => {:start_date_time => model.ra_date.change(:hour => 5),
                                                                             :end_date_time => model.ra_date.change(:hour => 6),
                                                                             :room => model.room})), 
                                   class:"availability-#{value}")
    end
  end
  
  column(:_6_am, :mandatory => true) do |model|
    format(model._6_am) do |value|
      content_tag(:td, content_tag(:a, 
                                   content_tag(:div, 
                                               value, 
                                               class:"availability-#{value}"), 
                                   href:reservation_new_url(:reservation => {:start_date_time => model.ra_date.change(:hour => 6),
                                                                             :end_date_time => model.ra_date.change(:hour => 7),
                                                                             :room => model.room})), 
                                   class:"availability-#{value}")
    end
  end
  
  column(:_7_am, :mandatory => true) do |model|
    format(model._7_am) do |value|
      content_tag(:td, content_tag(:a, 
                                   content_tag(:div, 
                                               value, 
                                               class:"availability-#{value}"), 
                                   href:reservation_new_url(:reservation => {:start_date_time => model.ra_date.change(:hour => 7),
                                                                             :end_date_time => model.ra_date.change(:hour => 8),
                                                                             :room => model.room})), 
                                   class:"availability-#{value}")
    end
  end
  
  column(:_8_am, :mandatory => true) do |model|
    format(model._8_am) do |value|
      content_tag(:td, content_tag(:a, 
                                   content_tag(:div, 
                                               value, 
                                               class:"availability-#{value}"), 
                                   href:reservation_new_url(:reservation => {:start_date_time => model.ra_date.change(:hour => 8),
                                                                             :end_date_time => model.ra_date.change(:hour => 9),
                                                                             :room => model.room})), 
                                   class:"availability-#{value}")
    end
  end
  
  column(:_9_am, :mandatory => true) do |model|
    format(model._9_am) do |value|
      content_tag(:td, content_tag(:a, 
                                   content_tag(:div, 
                                               value, 
                                               class:"availability-#{value}"), 
                                   href:reservation_new_url(:reservation => {:start_date_time => model.ra_date.change(:hour => 9),
                                                                             :end_date_time => model.ra_date.change(:hour => 10),
                                                                             :room => model.room})), 
                                   class:"availability-#{value}")
    end
  end
  
  column(:_10_am, :mandatory => true) do |model|
    format(model._10_am) do |value|
      content_tag(:td, content_tag(:a, 
                                   content_tag(:div, 
                                               value, 
                                               class:"availability-#{value}"), 
                                   href:reservation_new_url(:reservation => {:start_date_time => model.ra_date.change(:hour => 10),
                                                                             :end_date_time => model.ra_date.change(:hour => 11),
                                                                             :room => model.room})), 
                                   class:"availability-#{value}")
    end
  end
  
  column(:_11_am, :mandatory => true) do |model|
    format(model._11_am) do |value|
      content_tag(:td, content_tag(:a, 
                                   content_tag(:div, 
                                               value, 
                                               class:"availability-#{value}"), 
                                   href:reservation_new_url(:reservation => {:start_date_time => model.ra_date.change(:hour => 11),
                                                                             :end_date_time => model.ra_date.change(:hour => 12),
                                                                             :room => model.room})), 
                                   class:"availability-#{value}")
    end
  end
  
  column(:_12_pm, :mandatory => true) do |model|
    format(model._12_pm) do |value|
      content_tag(:td, content_tag(:a, 
                                   content_tag(:div, 
                                               value, 
                                               class:"availability-#{value}"), 
                                   href:reservation_new_url(:reservation => {:start_date_time => model.ra_date.change(:hour => 12),
                                                                             :end_date_time => model.ra_date.change(:hour => 13),
                                                                             :room => model.room})), 
                                   class:"availability-#{value}")
    end
  end
  
  column(:_1_pm, :mandatory => true) do |model|
    format(model._1_pm) do |value|
      content_tag(:td, content_tag(:a, 
                                   content_tag(:div, 
                                               value, 
                                               class:"availability-#{value}"), 
                                   href:reservation_new_url(:reservation => {:start_date_time => model.ra_date.change(:hour => 13),
                                                                             :end_date_time => model.ra_date.change(:hour => 14),
                                                                             :room => model.room})), 
                                   class:"availability-#{value}")
    end
  end
  
  column(:_2_pm, :mandatory => true) do |model|
    format(model._2_pm) do |value|
      content_tag(:td, content_tag(:a, 
                                   content_tag(:div, 
                                               value, 
                                               class:"availability-#{value}"), 
                                   href:reservation_new_url(:reservation => {:start_date_time => model.ra_date.change(:hour => 14),
                                                                             :end_date_time => model.ra_date.change(:hour => 15),
                                                                             :room => model.room})), 
                                   class:"availability-#{value}")
    end
  end
  
  column(:_3_pm, :mandatory => true) do |model|
    format(model._3_pm) do |value|
      content_tag(:td, content_tag(:a, 
                                   content_tag(:div, 
                                               value, 
                                               class:"availability-#{value}"), 
                                   href:reservation_new_url(:reservation => {:start_date_time => model.ra_date.change(:hour => 15),
                                                                             :end_date_time => model.ra_date.change(:hour => 16),
                                                                             :room => model.room})), 
                                   class:"availability-#{value}")
    end
  end
  
  column(:_4_pm, :mandatory => true) do |model|
    format(model._4_pm) do |value|
      content_tag(:td, content_tag(:a, 
                                   content_tag(:div, 
                                               value, 
                                               class:"availability-#{value}"), 
                                   href:reservation_new_url(:reservation => {:start_date_time => model.ra_date.change(:hour => 16),
                                                                             :end_date_time => model.ra_date.change(:hour => 17),
                                                                             :room => model.room})), 
                                   class:"availability-#{value}")
    end
  end
  
  column(:_5_pm, :mandatory => true) do |model|
    format(model._5_pm) do |value|
      content_tag(:td, content_tag(:a, 
                                   content_tag(:div, 
                                               value, 
                                               class:"availability-#{value}"), 
                                   href:reservation_new_url(:reservation => {:start_date_time => model.ra_date.change(:hour => 17),
                                                                             :end_date_time => model.ra_date.change(:hour => 18),
                                                                             :room => model.room})), 
                                   class:"availability-#{value}")
    end
  end
  
  column(:_6_pm, :mandatory => true) do |model|
    format(model._6_pm) do |value|
      content_tag(:td, content_tag(:a, 
                                   content_tag(:div, 
                                               value, 
                                               class:"availability-#{value}"), 
                                   href:reservation_new_url(:reservation => {:start_date_time => model.ra_date.change(:hour => 18),
                                                                             :end_date_time => model.ra_date.change(:hour => 19),
                                                                             :room => model.room})), 
                                   class:"availability-#{value}")
    end
  end
  
  column(:_7_pm, :mandatory => true) do |model|
    format(model._7_pm) do |value|
      content_tag(:td, content_tag(:a, 
                                   content_tag(:div, 
                                               value, 
                                               class:"availability-#{value}"), 
                                   href:reservation_new_url(:reservation => {:start_date_time => model.ra_date.change(:hour => 19),
                                                                             :end_date_time => model.ra_date.change(:hour => 20),
                                                                             :room => model.room})), 
                                   class:"availability-#{value}")
    end
  end
  
  column(:_8_pm, :mandatory => true) do |model|
    format(model._8_pm) do |value|
      content_tag(:td, content_tag(:a, 
                                   content_tag(:div, 
                                               value, 
                                               class:"availability-#{value}"), 
                                   href:reservation_new_url(:reservation => {:start_date_time => model.ra_date.change(:hour => 20),
                                                                             :end_date_time => model.ra_date.change(:hour => 21),
                                                                             :room => model.room})), 
                                   class:"availability-#{value}")
    end
  end
  
  column(:_9_pm, :mandatory => true) do |model|
    format(model._9_pm) do |value|
      content_tag(:td, content_tag(:a, 
                                   content_tag(:div, 
                                               value, 
                                               class:"availability-#{value}"), 
                                   href:reservation_new_url(:reservation => {:start_date_time => model.ra_date.change(:hour => 21),
                                                                             :end_date_time => model.ra_date.change(:hour => 22),
                                                                             :room => model.room})), 
                                   class:"availability-#{value}")
    end
  end
  
  column(:_10_pm, :mandatory => true) do |model|
    format(model._10_pm) do |value|
      content_tag(:td, content_tag(:a, 
                                   content_tag(:div, 
                                               value, 
                                               class:"availability-#{value}"), 
                                   href:reservation_new_url(:reservation => {:start_date_time => model.ra_date.change(:hour => 22),
                                                                             :end_date_time => model.ra_date.change(:hour => 23),
                                                                             :room => model.room})), 
                                   class:"availability-#{value}")
    end
  end
  
  column(:_11_pm, :mandatory => true) do |model|
    format(model._11_pm) do |value|
      content_tag(:td, content_tag(:a, 
                                   content_tag(:div, 
                                               value, 
                                               class:"availability-#{value}"), 
                                   href:reservation_new_url(:reservation => {:start_date_time => model.ra_date.change(:hour => 23),
                                                                             :end_date_time => model.ra_date.advance(:day => +1).change( :hour => 0),
                                                                             :room => model.room})), 
                                   class:"availability-#{value}")
    end
  end
  

end