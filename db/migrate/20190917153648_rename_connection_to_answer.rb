class RenameConnectionToAnswer < ActiveRecord::Migration[5.0]
  def change
    rename_column :four_clue_questions, :connection, :answer
    rename_column :missing_vowels_rounds, :connection, :answer
  end
end
