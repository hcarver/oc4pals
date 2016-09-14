class Oc < ApplicationRecord
  belongs_to :owner, class_name: "User"
  validates :owner, presence: true
  validates :name, presence: true, length: {minimum: 3}

  has_many :round_one_questions, -> { order(position: :asc) }
  has_many :round_two_questions, -> { order(position: :asc) }
  has_one  :round_three_puzzgrid
  has_many :missing_vowels_rounds, -> { order(position: :asc) }

  def name=(value)
    super(value.strip)
  end
end
