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
    {
      name: "Warrior",
      bio: "The Warrior is a solid, well-rounded character perfect for players new to RobotKombot. This character excels at defense, with large amounts of health and access to powerful suits of armor. These strengths help keep the Warrior protected when engaged in close-quarters combat against hordes of monsters.",
      weaknesses: "Assassin",
      image_url: "https://vignette.wikia.nocookie.net/maplestory/images/e/e7/Artwork_Warrior_%28RED%2C_Male%29.png/revision/latest?cb=20131118150759"
    },
    {
      name: "Magician",
      bio: "The Magician is one of the four class archetype that other jobs in RobotKombot draw from. They make use of unrivaled magical power to attack foes from a variety of ranges, usually in the interest of backing up comrades and keeping foes from all directions at a safe distance.",
      weaknesses: "Warrior",
      image_url: "https://i.pinimg.com/originals/ca/7c/80/ca7c80ff7597b778a7b036018a6ff958.png"
    },
    {
      name: "Assassin",
      bio: "An assassin is one of the five class archetype that other jobs in MapleStory draw from. They are the fastest short-range attackers in the game, dealing relatively low damage yet many attacks on a foe with daggers, claws and throwing stars.",
      weaknesses: "Archer",
      image_url: "https://vignette.wikia.nocookie.net/maplestory/images/e/e7/Artwork_Thief_%28RED%2C_Male%29.png/revision/latest?cb=20131222192024"
    },
    {
      name: "Archer",
      bio: "Archers are a part of Explorers and are the characters that wield Bows and Crossbows. They use long-range attacks and are capable dealing splash damage. They also have the highest accuracy, thus granting them the ability to fight Bosses earlier than the other classes.",
      weaknesses: "Magician",
      image_url: "https://vignette.wikia.nocookie.net/maplestory/images/2/2d/Artwork_Bowman_%28RED%2C_Female%29.png/revision/latest?cb=20130628055327"
    }
  ]
)









dan = User.create!(username: "Dan", password_digest: "123")

Character.create!(
  [
    {
      name: "Strong Warrior",
      hp: 150,
      level: 1,
      physical_damage: 5,
      magical_damage: 1,
      armor: 4,
      user: dan,
      image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSoBb0m_DErSwVWvEV8azzy7avi-giU9Nu_Ec8yNs8WQDG8F9pPg",
      job: jobs.first
    },
    {
      name: "Majestic Mage",
      hp: 110,
      level: 1,
      physical_damage: 0,
      magical_damage: 6,
      armor: 2,
      user: dan,
      image_url: "https://vignette.wikia.nocookie.net/kidicarus/images/7/73/Uprising_lady_palutena_e3_2011_press_kit.png/revision/latest/scale-to-width-down/300?cb=20160122055951",
      job: jobs.second
    },
    {
      name: "Silent Assassin",
      hp: 120,
      level: 1,
      physical_damage: 3,
      magical_damage: 3,
      armor: 3,
      user: dan,
      image_url: "https://gamepedia.cursecdn.com/zelda_gamepedia_en/thumb/e/e5/OoT_Sheik_Artwork.png/1200px-OoT_Sheik_Artwork.png",
      job: jobs.third
    },
    {
      name: "Sky Archer",
      hp: 95,
      level: 1,
      physical_damage: 4,
      magical_damage: 2,
      armor: 2,
      image_url: "https://i.dlpng.com/static/png/428884_thumb.png",
      user: dan,
      job: jobs.fourth
    }
  ]
)
boss1 = Boss.create(name: "Sabrinella", hp: 500, level: 2, physical_damage: 13, magical_damage: 5, armor: 10, weaknesses: "your mom", image_url: "https://upload.wikimedia.org/wikipedia/en/thumb/c/c4/Sephiroth.png/220px-Sephiroth.png")
boss2 = Boss.create(name: "Sabrinas mom", hp: 1000, level: 3, physical_damage: 23, magical_damage: 20, armor: 20, weaknesses: "Sabrina", image_url: "https://static.tvtropes.org/pmwiki/pub/images/mm35_pg181.png")
boss3 = Boss.create(name: "Eric Kim", hp: 3000, level: 4, physical_damage: 43, magical_damage: 30, armor: 30, weaknesses: "Mod 2", image_url: "/assets/erickimboss.png")


battle1 = Battle.create!(name: "Test Battle", victory: "yes", boss_id: 1, character_id: 1)
battle2 = Battle.create!(name: "Test Battle", victory: "yes", boss_id: 3, character_id: 1)
