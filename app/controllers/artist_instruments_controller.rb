class ArtistInstrumentsController < ApplicationController

   def show
      @ai = ArtistInstrument.find(params[:id])
   end

   def new 
      @ai = ArtistInstrument.new
   end

   def create
      @ai = ArtistInstrument.create(artist_instrument_params)
      redirect_to artist_instrument_path(@ai)
   end

   private

   def artist_instrument_params
      params.require(:artist_instrument).permit(:artist_id, :instrument_id)
   end
end
