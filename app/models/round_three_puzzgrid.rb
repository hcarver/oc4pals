class RoundThreePuzzgrid < ApplicationRecord
  belongs_to :oc
  validates :oc, presence: true
end
