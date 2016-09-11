class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :ocs do |t|
      t.string :name, null: false
      t.integer :owner_id, null: false
      t.boolean :public, null: false

      t.timestamps
    end
  end
end
