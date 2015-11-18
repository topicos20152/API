class Answer
  include Mongoid::Document
  field :message, type: String

  belongs_to :user
  belongs_to :task
end
