json.array!(@motorcycles) do |motorcycle|
  json.extract! motorcycle, :id, :model, :description, :price
  json.url motorcycle_url(motorcycle, format: :json)
end
