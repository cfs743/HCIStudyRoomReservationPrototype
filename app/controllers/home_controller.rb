class HomeController < ApplicationController
  def index
  end

  def start
  end

  def download_schedule
    file = "#{Rails.root}/public/instructions_and_schedule.pdf"
    File.open(file, 'r') do |f|
      send_data f.read.force_encoding('BINARY'), :filename => "instructions_and_schedule.pdf"
    end
  end
end
