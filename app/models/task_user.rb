class TaskUser
	include Mongoid::Document
	include Mongoid::Timestamps

	field :task_id, type: String
	field :user_id, type: String

	belongs_to :task
	belongs_to :user
end	