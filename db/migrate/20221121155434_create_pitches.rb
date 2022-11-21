class CreatePitches < ActiveRecord::Migration[7.0]
  def change
    create_table :pitches do |t|
      t.string :name
      t.string :sport
      t.text :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
