class CreateCompetitors < ActiveRecord::Migration[6.1]
  def change
    create_table :competitors do |t|
      t.integer :venture_id
      t.string :name
      t.text :difference
      t.string :advantage

      t.timestamps
    end
  end
end
