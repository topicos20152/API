json.array!(@courses) do |course|
  json.id course.id.to_s
  json.title course.title
end
