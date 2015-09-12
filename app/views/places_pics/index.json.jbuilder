json.array!(@places_pics) do |places_pic|
  json.extract! places_pic, :id, :title, :body, :place_id
  json.url places_pic_url(places_pic, format: :json)
end
