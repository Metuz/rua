json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :name, :lname, :mname, :pin, :degree, :master, :dictamen, :shift, :age
  json.url teacher_url(teacher, format: :json)
end
