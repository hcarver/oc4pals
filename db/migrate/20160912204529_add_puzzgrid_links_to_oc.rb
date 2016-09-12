class AddPuzzgridLinksToOc < ActiveRecord::Migration[5.0]
  def change
    create_table :round_three_puzzgrids do |t|
      t.references :oc, foreign_key: true
      t.string :grid_one, null: false
      t.string :grid_two, null: false
    end
  end
end
