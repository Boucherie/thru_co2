class CalculatorsController < ApplicationController

  def index


    res = Typhoeus.get("https://maps.googleapis.com/maps/api/js?key=#{ENV['GM_KEY']}&libraries=places", followlocation: true)
      # body = JS.parse(res.body)

      render js
      # : {
      #   geocoded_waypoints: body["geocoded_waypoints"],
      #   routes: body["routes"],
      # }
  end
end
