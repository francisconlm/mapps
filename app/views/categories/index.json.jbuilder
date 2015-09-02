json.array!(@categories) do |category|
  json.extract! category, :id, :name, :body
  json.url category_url(category, format: :json)
end
