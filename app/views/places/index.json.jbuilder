json.array!(@places) do |place|
  json.extract! place, :id, :latitude, :longitude, :address, :description, :title
  json.url place_url(place, format: :json)
end
