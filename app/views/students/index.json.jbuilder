json.array!(@students) do |student|
  json.extract! student, :id, :name, :lname, :mname, :pin, :entry, :graduation, :master_id
  json.url student_url(student, format: :json)
end
