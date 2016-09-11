class OC < ApplicationRecord
  belongs_to :owner, class_name: "User"
  validates :owner, presence: true
  validates :name, presence: true, length: {minimum: 3}

  def name=(value)
    super(value.strip)
  end
end
