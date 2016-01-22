user1 = User.create!(username: "lawson", password: "password", email: "email@sample.com")
user2 = User.create!(username: "mike", password: "password", email: "email2@sample.com")
user3 = User.create!(username: "tom", password: "password", email: "email3@sample.com")

hunt1 = Hunt.create!(user_id: 1, length_in_miles: 500, area_in_miles: 800)
hunt2 = Hunt.create!(user_id: 1, length_in_miles: 510, area_in_miles: 900)
hunt3 = Hunt.create!(user_id: 2, length_in_miles: 520, area_in_miles: 700)
hunt4 = Hunt.create!(user_id: 3, length_in_miles: 530, area_in_miles: 600)

hunt1clue1 = Clue.create!(hunt_id: 1, clue_number: 1, clue_points: 100, clue_content: "This is a clue")
hunt1clue2 = Clue.create!(hunt_id: 1, clue_number: 2, clue_points: 200, clue_content: "This is a second clue")
hunt1clue3 = Clue.create!(hunt_id: 1, clue_number: 3, clue_points: 300, clue_content: "This is a third clue")
hunt2clue1 = Clue.create!(hunt_id: 2, clue_number: 1, clue_points: 100, clue_content: "This is a clue")
hunt2clue2 = Clue.create!(hunt_id: 2, clue_number: 2, clue_points: 200, clue_content: "This is a 2rd clue")
hunt2clue3 = Clue.create!(hunt_id: 2, clue_number: 3, clue_points: 300, clue_content: "This is a 3rd clue")
hunt3clue1 = Clue.create!(hunt_id: 3, clue_number: 1, clue_points: 100, clue_content: "This is another clue")
hunt4clue1 = Clue.create!(hunt_id: 4, clue_number: 1, clue_points: 100, clue_content: "This is yet another clue")

huntplayer1 = HuntPlayer.create!(user_id: 1, hunt_id: 1)
huntplayer2 = HuntPlayer.create!(user_id: 2, hunt_id: 2)
huntplayer3 = HuntPlayer.create!(user_id: 3, hunt_id: 3)

image1 = Image.create!(image_url: "link")
image2 = Image.create!(image_url: "another link")

clueimage1 = ClueImage.create!(image_id: 1, clue_id: 1)
clueimage2 = ClueImage.create!(image_id: 1, clue_id: 2)
clueimage3 = ClueImage.create!(image_id: 1, clue_id: 3)
clueimage4 = ClueImage.create!(image_id: 1, clue_id: 4)
clueimage5 = ClueImage.create!(image_id: 2, clue_id: 5)
clueimage6 = ClueImage.create!(image_id: 2, clue_id: 6)
clueimage7 = ClueImage.create!(image_id: 2, clue_id: 7)
clueimage8 = ClueImage.create!(image_id: 2, clue_id: 8)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
