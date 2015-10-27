class CourseUser
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :user_id, type: String
  field :course_id, type: String

  belongs_to :user
  belongs_to :course
end
