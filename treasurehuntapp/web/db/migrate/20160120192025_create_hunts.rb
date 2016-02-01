class CreateHunts < ActiveRecord::Migration
  def change
    create_table :hunts do |t|
    	t.references :user, null: false
    	t.integer :length_in_miles, null: false
    	t.integer :area_in_miles, null: false
    	t.string :prize_name
    	t.string :prize_description
        t.string :hunt_image_url

    	t.timestamps null: false
    end
  end
end
