require 'last_fm'

LastFM.api_key = ENV['lastfm_api_key']

albums = [
  [ 'Nirvana', 'Nevermind' ],
  [ 'Aphex Twin', 'Richard D. James Album' ],
  [ 'Big Pink', 'A Brief History of Love' ],
  [ 'Nine Inch Nails', 'Pretty Hate Machine' ],
  [ 'Nine Inch Nails', 'The Downward Spiral' ],
  [ 'Sugar', 'Copper Blue' ],
  [ 'Tycho', 'Dive' ],
  [ 'Glitch Mob', 'Drink the Sea' ],
  [ 'Superchunk', 'On the Mouth' ],
  [ 'Rage Against the Machine', 'Rage Against the Machine' ],
  [ 'Averkiou', 'Throwing Sparks' ],
  [ 'Boards of Canada', "Tomorrow's Harvest" ],
  [ 'Copy', 'Hard Dream' ],
  [ 'Human Television', 'All Songs Written By' ],
  [ 'Ringo Deathstarr', 'Ringo Deathstarr' ],
  [ 'Stone Roses', 'The Complete Stone Roses' ],
  [ 'Boards of Canada', 'Music Has the Right to Children' ],
  [ 'Clams Casino', 'Instrumentals' ],
  [ 'Medicine', 'Shot Forth Self Living' ],
  [ 'Ride', 'Nowhere' ],
  [ 'Sugar', 'File Under Easy Listening' ],
  [ 'Teenage Fanclub', 'Bandwagonesque' ],
  [ 'The Cure', 'Wish' ]
]

albums.each do |artist, album|
  lastfm = LastFM::Album.get_info(artist, album)

  artist = Artist.find_or_create_by(name: lastfm.artist)

  album = Album.find_or_create_by(
    name: lastfm.name,
    artist: artist,
    released: lastfm.released,
    image: lastfm.image
  )

  if lastfm.tracks
    lastfm.tracks.each_with_index do |t, i|
      track = Track.find_or_create_by(
        number: i + 1,
        name: t.name,
        duration: t.duration,
        album: album,
      )
    end
  end
end
