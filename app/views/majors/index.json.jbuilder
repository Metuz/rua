json.array!(@majors) do |major|
  json.extract! major, :id, :name
  json.url major_url(major, format: :json)
end
