class AccessToken
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :value, type: String
  field :expire_date, type: DateTime

  embedded_in :user

  scope :active, -> { where(:expire_date.gte => DateTime.now) }
end