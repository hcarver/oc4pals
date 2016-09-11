class User < ApplicationRecord
  acts_as_token_authenticatable
  devise :trackable
  validates :email, presence: true, uniqueness: true
end
