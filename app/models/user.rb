class User < ApplicationRecord
  acts_as_token_authenticatable
  devise :trackable
  validates :email, presence: true, uniqueness: true

  has_many :ocs, inverse_of: :owner, foreign_key: :owner_id
end
