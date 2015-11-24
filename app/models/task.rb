class Task
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :title, type: String
  field :description, type: String
  field :attachment, type: String
  field :opened_date, type: DateTime
  field :delivery_date, type: DateTime

  belongs_to :course

  has_many :answers
  has_many :task_user
end
