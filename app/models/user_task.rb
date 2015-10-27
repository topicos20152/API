class UserTask
  include Mongoid::Document
  field :score, type: Float

  field :user_id, type: String
  field :task_id, type: String

  belongs_to :user
  belongs_to :task
end
