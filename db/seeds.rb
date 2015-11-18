# CleanUp
Course.destroy_all
User.destroy_all
CourseUser.destroy_all
Task.destroy_all

Course.create([
  { title: 'Topicos I' }, 
  { title: 'Topicos II' },
  { title: 'Topicos III' },
  { title: 'Topicos IV' },
  { title: 'Topicos V' },
])

10.times do |n|
  User.create username: "user#{n}", sigaa_uuid: "0000#{n}", name: "Name #{n}"
end

User.each do |user|
  Course.all.sample(3).each do |course|
    CourseUser.create user: user, course: course
  end
end


Course.each do |course|
  3.times do |n|
    Task.create title: "Some Title", description: "Some Description", attachment: "Some URL", opened_date: Time.now, delivery_date: Time.now, course: course
  end
end