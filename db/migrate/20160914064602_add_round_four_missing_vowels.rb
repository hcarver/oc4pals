class AddRoundFourMissingVowels < ActiveRecord::Migration[5.0]
  def change
    create_table :missing_vowels_rounds do |t|
      t.references :oc, foreign_key: true
      t.string :connection, null: false
      t.integer :position

      t.string :clue1, null: false
      t.string :clue2, null: false
      t.string :clue3, null: false
      t.string :clue4, null: false

      t.string :answer1, null: false
      t.string :answer2, null: false
      t.string :answer3, null: false
      t.string :answer4, null: false

      t.timestamps
    end
  end
end
