class CourseUser
  include Mongoid::Document
  embedded_in :user
  embedded_in :course
end
