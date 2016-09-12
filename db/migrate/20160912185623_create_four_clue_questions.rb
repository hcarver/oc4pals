class CreateFourClueQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :four_clue_questions do |t|
      t.references :oc, foreign_key: true
      t.string :type, null: false, index: true
      t.integer :position

      t.boolean :is_pictures, null: false
      t.string :clue1, null: false
      t.string :clue2, null: false
      t.string :clue3, null: false
      t.string :clue4, null: false
      t.string :connection, null: false

      t.timestamps
    end
  end
end
