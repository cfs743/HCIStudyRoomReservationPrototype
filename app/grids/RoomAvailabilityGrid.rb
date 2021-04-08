class RoomAvailabilityGrid < BaseGrid
  include Datagrid

  scope do
    RoomAvailability
  end

  filter(:ra_date, :date, :header => "Start Date", :range => false, :default => DateTime.current.midnight)

  column(:actions, :html => true, :mandatory => true) do |record|
    link_to "+", reservation_new_url;
  end
  column(:room, :mandatory => true)
  column(:_12_am, :mandatory => true)
  column(:_1_am, :mandatory => true)
  column(:_2_am, :mandatory => true)
  column(:_3_am, :mandatory => true)
  column(:_4_am, :mandatory => true)
  column(:_5_am, :mandatory => true)
  column(:_6_am, :mandatory => true)
  column(:_7_am, :mandatory => true)
  column(:_8_am, :mandatory => true)
  column(:_9_am, :mandatory => true)
  column(:_10_am, :mandatory => true)
  column(:_11_am, :mandatory => true)
  column(:_12_pm, :mandatory => true)
  column(:_1_pm, :mandatory => true)
  column(:_2_pm, :mandatory => true)
  column(:_3_pm, :mandatory => true)
  column(:_4_pm, :mandatory => true)
  column(:_5_pm, :mandatory => true)
  column(:_6_pm, :mandatory => true)
  column(:_7_pm, :mandatory => true)
  column(:_8_pm, :mandatory => true)
  column(:_9_pm, :mandatory => true)
  column(:_10_pm, :mandatory => true)
  column(:_11_pm, :mandatory => true)

end