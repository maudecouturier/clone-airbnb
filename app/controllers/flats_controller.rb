class FlatsController < ApplicationController
  # def index
  #   @flats = policy_scope(Flat)
  #   authorize @flats
  # end

    def new
      @flat = Flat.new
      # authorize @flat
    end

  def index
    @flats = Flat.all

    @flats = @flats.geocoded

     @markers = @flats.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
        # infoWindow: render_to_string(partial: "info_window", locals: { flat: flat })
      }
    end


    def create
      @flat = Flat.new(flat_params)
      # authorize @flat
      if @flat.save
        redirect_to flat_path(@flat)
      else
        render :new
      end
    end

    private

    def flat_params
      params.require(:flat).permit(:title, :description, :location, :traveler, photos: [])
    end
  end
end
