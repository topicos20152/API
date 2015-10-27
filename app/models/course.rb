class Course
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :title, type: String

  has_many :tasks

  has_many :course_users
end
