class Course
  include Mongoid::Document
  field :title, type: String

  embeds_many :tasks
end
