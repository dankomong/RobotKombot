# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Job.destroy_all
User.destroy_all
Character.destroy_all

jobs = Job.create!(
  [
    {name: "Warrior", bio: "grr", weaknesses: "Assassin"},
    {name: "Mage", bio: "tacos", weaknesses: "Warrior" },
    {name: "Archer", bio: "shazaam", weaknesses: "Mage"},
    {name: "Assassin", bio: "shhhh", weaknesses: "Archer"}
  ]
)

dan = User.create!(name: "Dan", password_digest: "123")

Character.create!(
  [
    {
      name: "Strong Warrior",
      hp: 150,
      level: 1,
      physical_damage: 5,
      magical_damage: 1,
      armor: 3,
      user: dan,
      job: jobs.first
    },
    {
      name: "Majestic Mage",
      hp: 100,
      level: 1,
      physical_damage: 0,
      magical_damage: 6,
      armor: 2,
      user: dan,
      job: jobs.second
    },
    {
      name: "Sky Archer",
      hp: 100,
      level: 1,
      physical_damage: 4,
      magical_damage: 2,
      armor: 2,
      user: dan,
      job: jobs.third
    },
    {
      name: "Silent Assassin",
      hp: 105,
      level: 1,
      physical_damage: 3,
      magical_damage: 3,
      armor: 3,
      user: dan,
      job: jobs.fourth
    }
  ]
)
