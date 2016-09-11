class User < ApplicationRecord
  devise :trackable, :validatable
end
