class Artist < ApplicationRecord
   has_many :artist_instruments
   has_many :instruments, through: :artist_instruments

   def instruments_played
      self.instruments
   end

end
