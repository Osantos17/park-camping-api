class ParksController < ApplicationController
  def index
    @parks = Park.all
    render :index
  end

  # require "http"
  # protect_from_forgery with: :null_session

  # def index
  #   response = HTTP.get("https://developer.nps.gov/api/v1/campgrounds?parkCode=&stateCode=&limit=635&api_key=sWCHWTBubEqrdJpinZd6u6i1YyVUBElYtrIHwWsu")
  #   data = response.parse(:json)

  #   # data["data"].each do |park_data|
  #   #   park = Park.new(
  #   #     name: park_data['name'],
  #   #     city: park_data['addresses'].length > 0 && park_data['addresses'][0]['city'],
  #   #     totalsites: park_data['campsites']['totalSites'],
  #   #     firstcome: park_data['numberOfSitesFirstComeFirstServe'],
  #   #     reservable: park_data['numberOfSitesReservable'],
  #   #     fees: park_data['fees'].length > 0 && park_data['fees'][0]["cost"],
  #   #     showers: park_data['amenities']['showers'][0],
  #   #     toilets: park_data['amenities']['toilets'][0],
  #   #     phone: park_data['amenities']['cellPhoneReception'],
  #   #     url: park_data['url'],
  #   #     description: park_data['description']
  #   #   )
  #   #   park.save
  #   # end

  #   # render json: { message: 'Parks data saved successfully' }
  #   render json: data
  # end
end
