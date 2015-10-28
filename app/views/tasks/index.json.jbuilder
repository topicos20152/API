json.array!(@tasks) do |task|
  json.id task.id.to_s
  json.title task.title
  json.course_title task.course.title
  json.delivery_date task.delivery_date
end
