class CalculatorsController < ApplicationController

  def index
    
    res = Typhoeus.get("https://maps.googleapis.com/maps/api/js?key=#{ENV['GM_KEY']}&libraries=places", followlocation: true)
      body = JSON.parse(res.body)

      render json: {
        origin: body["routes"][0]['legs'][0]['start_address'],
        destination: body["routes"][0]['legs'][0]['end_address']
      }
  end
end
