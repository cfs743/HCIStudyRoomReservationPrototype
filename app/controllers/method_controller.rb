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
  end

  protected

  def ra_grid_params
    params.fetch(:room_availability_grid, {}).permit!
  end
end
