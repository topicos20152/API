class Task
  include Mongoid::Document
  field :status, type: String
  field :delivery_date, type: Time
  field :title, type: String
  field :description, type: String
  field :attachment, type: String
  embedded_in :course
end
