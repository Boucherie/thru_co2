# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)
User.destroy_all
Team.destroy_all
Score.destroy_all


Team.create!(
  name: 'Minions',
  id: 1,
  team_score: 36
)

Team.create!(
  name: 'Droids',
  id: 2,
  team_score: 45
)

Team.create!(
  name: 'Daleks',
  id: 3,
  team_score: 70
)

User.create!(
  email: 'email1@minions.com',
  team_id: 1,
  id: 1,
  password: 'password',
  password_confirmation: 'password'
)
puts "seeded"
User.create!(
  email: 'email2@minions.com',
  team_id: 1,
  id: 2,
  password: 'password',
  password_confirmation: 'password'
)

User.create!(
  email: 'email3@minions.com',
  team_id: 1,
  id: 3,
  password: 'password',
  password_confirmation: 'password'
)

User.create!(
  email: 'email1@droids.com',
  team_id: 2,
  id: 4,
  password: 'password',
  password_confirmation: 'password'
)

User.create!(
  email: 'email2@droids.com',
  team_id: 2,
  id: 5,
  password: 'password',
  password_confirmation: 'password'
)

User.create!(
  email: 'email3@droids.com',
  team_id: 2,
  id: 6,
  password: 'password',
  password_confirmation: 'password'
)

User.create!(
  email: 'email1@daleks.com',
  team_id: 3,
  id: 7,
  password: 'password',
  password_confirmation: 'password'
)

User.create!(
  email: 'email2@daleks.com',
  team_id: 3,
  id: 8,
  password: 'password',
  password_confirmation: 'password'
)

User.create!(
  email: 'email3@daleks.com',
  team_id: 3,
  id: 9,
  password: 'password',
  password_confirmation: 'password'
)

User.create!(
  email: 'email1@normal.com',
  id: 10,
  password: 'password',
  password_confirmation: 'password'
)

User.create!(
  email: 'email2@normal.com',
  id: 11,
  password: 'password',
  password_confirmation: 'password'
)

User.create!(
  email: 'email3@normal.com',
  id: 12,
  password: 'password',
  password_confirmation: 'password'
)

Score.create!(
  user_id: 1,
  distanceInKilometers: 15,
  # transit_mode: 'car',
  score: 49,
  created_at: '2017-07-01 12:05'
)

Score.create!(
  user_id: 1,
  distanceInKilometers: 20,
  # transit_mode: 'car',
  score: 32,
  created_at: '2017-07-02 13:05'
)

Score.create!(
  user_id: 1,
  distanceInKilometers: 15,
  # transit_mode: 'car',
  score: 20,
  created_at: '2017-07-03 12:05'
)

Score.create!(
  user_id: 1,
  distanceInKilometers: 15,
  # transit_mode: 'car',
  score: 32,
  created_at: '2017-07-04 12:05'
)

Score.create!(
  user_id: 1,
  distanceInKilometers: 15,
  # transit_mode: 'car',
  score: 10,
  created_at: '2017-07-05 9:05'
)

Score.create!(
  user_id: 1,
  distanceInKilometers: 15,
  # transit_mode: 'car',
  score: 43,
  created_at: '2017-07-07 11:05'
)

Score.create!(
  user_id: 2,
  distanceInKilometers: 15,
  # transit_mode: 'car',
  score: 49,
  created_at: '2017-07-01 12:05'
)

Score.create!(
  user_id: 2,
  distanceInKilometers: 15,
  # transit_mode: 'car',
  score: 34,
  created_at: '2017-07-02 12:05'
)

Score.create!(
  user_id: 2,
  distanceInKilometers: 15,
  # transit_mode: 'car',
  score: 64,
  created_at: '2017-07-03 12:05'
)

Score.create!(
  user_id: 2,
  distanceInKilometers: 15,
  # transit_mode: 'car',
  score: 24,
  created_at: '2017-07-04 12:05'
)

Score.create!(
  user_id: 2,
  distanceInKilometers: 15,
  # transit_mode: 'car',
  score: 10,
  created_at: '2017-07-05 9:05'
)

Score.create!(
  user_id: 2,
  distanceInKilometers: 15,
  # transit_mode: 'car',
  score: 15,
  created_at: '2017-07-01 11:05'
  )

Score.create!(
  user_id: 2,
  distanceInKilometers: 15,
  # transit_mode: 'car',
  score: 49,
  created_at: '2017-07-02 12:05'
  )

Score.create!(
  user_id: 2,
  distanceInKilometers: 15,
  # transit_mode: 'car',
  score: 49,
  created_at: '2017-07-03 12:05'
)

Score.create!(
  user_id: 2,
  distanceInKilometers: 15,
  # transit_mode: 'car',
  score: 20,
  created_at: '2017-07-04 12:05'
)

Score.create!(
  user_id: 2,
  distanceInKilometers: 15,
  # transit_mode: 'car',
  score: 20,
  created_at: '2017-07-05 12:05'
)

Score.create!(
  user_id: 3,
  distanceInKilometers: 15,
  # transit_mode: 'car',
  score: 36,
  created_at: '2017-07-01 11:05'
)

Score.create!(
  user_id: 3,
  distanceInKilometers: 15,
  # transit_mode: 'car',
  score: 49,
  created_at: '2017-07-02 12:05'
)

Score.create!(
  user_id: 3,
  distanceInKilometers: 15,
  # transit_mode: 'car',
  score: 32,
  created_at: '2017-07-03 12:05'
)

Score.create!(
  user_id: 3,
  distanceInKilometers: 15,
  # transit_mode: 'car',
  score: 100,
  created_at: '2017-07-04 12:05'
)

Score.create!(
  user_id: 3,
  distanceInKilometers: 15,
  # transit_mode: 'car',
  score: 64,
  created_at: '2017-07-05 12:05'
)

Score.create!(
  user_id: 4,
  distanceInKilometers: 50,
  # transit_mode: 'subway',
  score: 45,
  created_at: '2017-07-02 12:05'
)

Score.create!(
  user_id: 4,
  distanceInKilometers: 50,
  # transit_mode: 'subway',
  score: 45,
  created_at: '2017-07-04 12:05'
)

Score.create!(
  user_id: 4,
  distanceInKilometers: 50,
  # transit_mode: 'subway',
  score: 45,
  created_at: '2017-07-03 12:05'
)

Score.create!(
  user_id: 5,
  distanceInKilometers: 50,
  # transit_mode: 'subway',
  score: 45,
  created_at: '2017-07-01 12:05'
)

Score.create!(
  user_id: 5,
  distanceInKilometers: 50,
  # transit_mode: 'subway',
  score: 45,
  created_at: '2017-07-02 12:05'
)

Score.create!(
  user_id: 5,
  distanceInKilometers: 50,
  # transit_mode: 'subway',
  score: 45,
  created_at: '2017-07-03 12:05'
)

Score.create!(
  user_id: 6,
  distanceInKilometers: 50,
  # transit_mode: 'subway',
  score: 45,
  created_at: '2017-07-01 12:05'
)

Score.create!(
  user_id: 6,
  distanceInKilometers: 50,
  # transit_mode: 'subway',
  score: 45,
  created_at: '2017-07-02 12:05'
)

Score.create!(
  user_id: 6,
  distanceInKilometers: 50,
  # transit_mode: 'subway',
  score: 45,
  created_at: '2017-07-03 12:05'
)

Score.create!(
  user_id: 7,
  distanceInKilometers: 60,
  # transit_mode: 'walk',
  score: 70,
  created_at: '2017-07-01 12:05'
)

Score.create!(
  user_id: 7,
  distanceInKilometers: 60,
  # transit_mode: 'walk',
  score: 70,
  created_at: '2017-07-02 12:05'
)

Score.create!(
  user_id: 7,
  distanceInKilometers: 60,
  # transit_mode: 'walk',
  score: 70,
  created_at: '2017-07-03 12:05'
)

Score.create!(
  user_id: 8,
  distanceInKilometers: 60,
  # transit_mode: 'walk',
  score: 70,
  created_at: '2017-07-01 12:05'
)

Score.create!(
  user_id: 8,
  distanceInKilometers: 60,
  # transit_mode: 'walk',
  score: 70,
  created_at: '2017-07-02 12:05'
)

Score.create!(
  user_id: 8,
  distanceInKilometers: 60,
  # transit_mode: 'walk',
  score: 70,
  created_at: '2017-07-03 12:05'
)

Score.create!(
  user_id: 9,
  distanceInKilometers: 60,
  # transit_mode: 'walk',
  score: 70,
  created_at: '2017-07-01 12:05'
)

Score.create!(
  user_id: 9,
  distanceInKilometers: 60,
  # transit_mode: 'walk',
  score: 70,
  created_at: '2017-07-02 12:05'
)

Score.create!(
  user_id: 9,
  distanceInKilometers: 60,
  # transit_mode: 'walk',
  score: 70,
  created_at: '2017-07-03 12:05'
)
