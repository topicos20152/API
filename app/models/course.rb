class Course
  include Mongoid::Document
  field :title, type: String

  has_many :tasks
end
