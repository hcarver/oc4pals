class FourClueQuestion < ApplicationRecord
  belongs_to :oc
  validates :oc, presence: true

  validates :is_pictures, inclusion: [true, false]

  validates :clue1, presence: true
  validates :clue2, presence: true
  validates :clue3, presence: true
  validates :clue4, presence: true

  validates :connection, presence: true

  acts_as_list scope: :oc
end
