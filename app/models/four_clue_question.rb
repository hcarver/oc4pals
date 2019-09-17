class FourClueQuestion < ApplicationRecord
  belongs_to :oc
  validates :oc, presence: true

  validates :is_pictures, inclusion: [true, false]

  validates :clue1, presence: true
  validates :clue2, presence: true
  validates :clue3, presence: true
  validates :clue4, presence: true

  validates :answer, presence: true

  acts_as_list scope: :oc

  def self.round_one
    where(type: RoundOneQuestion.name)
  end

  def self.round_two
    where(type: RoundTwoQuestion.name)
  end

end
