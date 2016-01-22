class CreateClues < ActiveRecord::Migration
  def change
    create_table :clues do |t|
    	t.references :hunt, null: false
    	t.integer :clue_number, null: false
    	t.integer :clue_points, null: false
    	t.string :clue_content, null: false

    	t.timestamps null: false
    end
  end
end
