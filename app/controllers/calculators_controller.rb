class CalculatorsController < ApplicationController

  def index
    res = Typhoeus.get("https://maps.googleapis.com/maps/api/directions/json?origin=Toronto&destination=Montreal&key=#{ENV['GM_KEY']}", followlocation: true)
      body = JSON.parse(res.body)

      render json: {
        geocoded_waypoints: body["geocoded_waypoints"],
        routes: body["routes"],
      }
  end
end
