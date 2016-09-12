class Oc < ApplicationRecord
  belongs_to :owner, class_name: "User"
  validates :owner, presence: true
  validates :name, presence: true, length: {minimum: 3}

  has_many :round_one_questions
  has_many :round_two_questions
  has_one :round_three_puzzgrid

  def name=(value)
    super(value.strip)
  end
end
