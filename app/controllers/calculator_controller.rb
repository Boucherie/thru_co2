require "typhoeus"


class CalculatorController < ApplicationController

  headers = {
    Authorization:"Token token=\"#{ENV['GM_KEY']}\""

    res = Typhoeus.get("https://maps.googleapis.com/maps/api/directions/json?origin=Toronto&destination=Montreal&key=GM_KEY", followlocation: true)
      map_body = JSON.parse(res.body)




end
