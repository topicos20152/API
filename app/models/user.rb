class User
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :username, type: String
  field :sigaa_uuid, type: String
  field :name, type: String

  has_many :course_users
  has_many :user_tasks

  embeds_many :access_tokens

  accepts_nested_attributes_for :access_tokens

  def generate_access_token
    access_token = self.access_tokens.build(value: SecureRandom.urlsafe_base64(nil, false), expire_date: DateTime.tomorrow)
    access_token
  end
end
