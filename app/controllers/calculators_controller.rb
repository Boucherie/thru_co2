class CalculatorsController < ApplicationController

  def index
    res = Typhoeus.get("https://maps.googleapis.com/maps/api/directions/json?origin=Toronto&destination=Montreal&key=#{ENV['GM_KEY']}", followlocation: true)
      body = JSON.parse(res.body)

      render json: {
        origin: body["routes"][0]['legs'][0]['start_address'],
        destination: body["routes"][0]['legs'][0]['end_address']
      }
  end
end
