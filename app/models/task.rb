class Task
  include Mongoid::Document
  field :status, type: String
  field :delivery_date, type: Time
  field :title, type: String
  field :description, type: String
  field :attachment, type: String
  field :course_id, type: String

  belongs_to :course
end
