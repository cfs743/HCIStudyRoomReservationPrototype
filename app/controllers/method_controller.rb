class MethodController < ApplicationController
  def method1
      
  end

  def method2
    puts params
    @room_availability_grid = RoomAvailabilityGrid.new(ra_grid_params) do |scope|
      scope.page(params[:page])
    end
  end

  def method3
    puts params
    @time_availability_grid = TimeAvailabilityGrid.new(ta_grid_params) do |scope|
      scope.page(params[:page])
    end
  end

  protected

  def ra_grid_params
    params.fetch(:room_availability_grid, {}).permit!
  end

  def ta_grid_params
    params.fetch(:time_availability_grid, {}).permit!
  end

end
