class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :username, null: false
      t.string :password_digest, null: false
      t.string :email, null: false
      t.integer :latitude, default: 0, null: false
      t.integer :longitude, default: 0, null: false
      t.integer :total_score, default: 0, null: false

      t.timestamps null: false
    end
  end
end
