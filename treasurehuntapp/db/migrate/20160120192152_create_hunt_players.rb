class CreateHuntPlayers < ActiveRecord::Migration
  def change
    create_table :hunt_players do |t|
    	t.references :user, null: false
    	t.references :hunt, null: false
    	t.integer :num_clues_completed, default: 0, null: false
    	t.integer :completed, default: 0, null: false
      t.integer :current_score, default: 0, null: false

    	t.timestamps null: false
    end
  end
end
