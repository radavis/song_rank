json.array!(@directories) do |directory|
  json.extract! directory, :name
  json.url directory_url(directory, format: :json)
end
