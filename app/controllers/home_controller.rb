class HomeController < ApplicationController
  def index
  end

  def start
  end

  def download_schedule
    send_file(
      "#Rails.root}/public/example_schedule.pdf",
      filename: "example_schedule.pdf",
      type: "application/pdf"
    )
  end
end
