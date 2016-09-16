class MissingVowelsRound < ApplicationRecord
  belongs_to :oc
  validates :oc, presence: true

  validates :clue1, presence: true
  validates :clue2, presence: true
  validates :clue3, presence: true
  validates :clue4, presence: true

  validates :answer1, presence: true, length: { minimum: 1 }
  validates :answer2, presence: true, length: { minimum: 1 }
  validates :answer3, presence: true, length: { minimum: 1 }
  validates :answer4, presence: true, length: { minimum: 1 }

  validates :connection, presence: true

  acts_as_list scope: :oc

  validate :validate_clues_match_answers

  def clue1=(value)
    super(value&.upcase)
  end

  def clue2=(value)
    super(value&.upcase)
  end

  def clue3=(value)
    super(value&.upcase)
  end

  def clue4=(value)
    super(value&.upcase)
  end

  def answer1=(value)
    super(value&.upcase)
  end

  def answer2=(value)
    super(value&.upcase)
  end

  def answer3=(value)
    super(value&.upcase)
  end

  def answer4=(value)
    super(value&.upcase)
  end

  def clues_and_answer_attributes
    {
      clue1: :answer1,
      clue2: :answer2,
      clue3: :answer3,
      clue4: :answer4
    }
  end

  def clues_and_answers
    Hash[clues_and_answer_attributes.map do |clue_n, answer_n|
      [send(clue_n), send(answer_n)]
    end]
  end

  def validate_clues_match_answers
    clues_and_answer_attributes.each do |clue_n, answer_n|
      clue = self.send(clue_n) || ""
      answer = self.send(answer_n) || ""

      if /[aeiou]/ =~ clue.downcase.parameterize
        errors.add(clue_n, "This clue contains vowels!")
      end

      if answer.downcase.gsub(/[aeiou\s]/, "") !=
         clue.downcase.gsub(/[aeiou\s]/, "")
        errors.add(clue_n, "This clue doesn't match the answer")
      end
    end
  end
end
