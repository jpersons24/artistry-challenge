class ArtistInstrument < ApplicationRecord
   belongs_to :artist
   belongs_to :instrument

   def ai_artist_name
      Artist.find(self.artist_id).name
   end

   def ai_instrument_name
      Instrument.find(self.instrument_id).name
   end

end
