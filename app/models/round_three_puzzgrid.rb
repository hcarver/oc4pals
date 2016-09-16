class RoundThreePuzzgrid < ApplicationRecord
  belongs_to :oc
  validates :oc, presence: true
  validates :grid_one, presence: true
  validates :grid_two, presence: true
end
