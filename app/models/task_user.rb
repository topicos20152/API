class TaskUser
	include Mongoid::Document
	include Mongoid::Timestamps

	field :read, type: Boolean

	belongs_to :task
	belongs_to :user
end	