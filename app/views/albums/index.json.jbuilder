json.array!(@albums) do |album|
  json.extract! album, :name, :release_date, :artist_id
  json.url album_url(album, format: :json)
end
