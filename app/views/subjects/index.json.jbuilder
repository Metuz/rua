json.array!(@subjects) do |subject|
  json.extract! subject, :id, :name, :pin, :credits, :period, :belongs_to
  json.url subject_url(subject, format: :json)
end
