
puts "destroying everything"
Artist.destroy_all
Instrument.destroy_all
ArtistInstrument.destroy_all


puts "Discovering artists"

Artist.create(name: "Michael Jackson", age: rand(50), title: "King of Pop")
Artist.create(name: "Stevie Wonder", age: rand(50), title: "Little Stevie Wonder")
Artist.create(name: "Elvis Presley", age: rand(50), title: "the King")
Artist.create(name: "Whitney Houston", age: rand(50), title: "The Voice")
Artist.create(name: "Beyoncé", age: rand(50), title: "Destiny's Child")


puts "creating instruments"
Instrument.create(name: "Guitar", classification: "Strings")
Instrument.create(name: "Violin", classification: "Strings")
Instrument.create(name: "Flute", classification: "Woodwind")
Instrument.create(name: "Xylophone", classification: "Percussion")


puts "creating artist instruments"
15.times do 
   ArtistInstrument.create(artist_id: Artist.all.sample.id, instrument_id: Instrument.all.sample.id)
end
