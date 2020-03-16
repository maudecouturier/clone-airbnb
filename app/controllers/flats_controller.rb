class FlatsController < ApplicationController

  # def index
  #   @flats = policy_scope(Flat)
  #   authorize @flats
  # end


  def index

    @flats = Flat.all

    @flats = Flat.geocoded

     @markers = @flats.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end
end
