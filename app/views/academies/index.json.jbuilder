json.array!(@academies) do |academy|
  json.extract! academy, :id, :name
  json.url academy_url(academy, format: :json)
end
