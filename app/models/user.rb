class User
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :username, type: String
  field :sigaa_uuid, type: String
  field :name, type: String

  has_many :course_users
  has_many :answers
  has_many :task_user

  embeds_many :access_tokens

  accepts_nested_attributes_for :access_tokens

  def generate_access_token
    access_token = self.access_tokens.build(value: SecureRandom.urlsafe_base64(nil, false), expire_date: DateTime.tomorrow)
    access_token
  end

  def check_access_token access_token
    return self.access_tokens.active.where(value: access_token).size >= 1
  end

  def tasks
    tasks = []
    self.course_users.map(&:course).each do |course|
      tasks += course.tasks
    end
    tasks
  end

  def check_task(task, user)
    @task_user = TaskUser.where(user:@user, task:@task).first_or_create
    @task_user.readed = true
    task_user.save
    puts "SAVED"
  end
end
