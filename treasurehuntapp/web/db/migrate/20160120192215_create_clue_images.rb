class CreateClueImages < ActiveRecord::Migration
  def change
    create_table :clue_images do |t|
    	t.references :clue, null: false
    	t.references :image, null: false

    	t.timestamps null: false
    end
  end
end
