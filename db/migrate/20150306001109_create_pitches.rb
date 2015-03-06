class CreatePitches < ActiveRecord::Migration
  def change
    create_table :pitches do |t|
      t.string :company
      t.string :idea

      t.timestamps
    end
  end
end
