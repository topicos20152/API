class User
  include Mongoid::Document
  field :username, type: String
  field :sigaa_uuid, type: String
  field :name, type: String

  has_many :course_users
  has_many :user_tasks
end
