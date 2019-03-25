# require 'pry'
Category.destroy_all
Item.destroy_all
ItemCategory.destroy_all

rain = Category.create(title: "Rain", description: "Gear for weather when raining")
snow = Category.create(title: "Snow", description: "Gear for weather when snowing")
sunny = Category.create(title: "Sunny", description: "Gear for weather when Sunny")
very_cold = Category.create(title: "Very Cold", description: "Gear for weather when Very Cold")
cold = Category.create(title: "Cold", description: "Gear for weather when Cold")
moderate = Category.create(title: "Moderate", description: "Gear for weather when Moderate")
warm = Category.create(title: "Warm", description: "Gear for weather when Warm")
hot = Category.create(title: "Hot", description: "Gear for weather when Hot")



# HEAD Items

hat1 = Item.create(name: "Beige Polo Hat", img_url: "https://i.imgur.com/CieuVDQt.jpg?1", body_part: "head")
hat2 = Item.create(name: "Navy Polo Hat", img_url: "https://i.imgur.com/UZKd0wot.jpg", body_part: "head")
hat3 = Item.create(name: "Sky Blue Polo Hat", img_url: "https://i.imgur.com/8EDTJCUt.jpg", body_part: "head")
hat4 = Item.create(name: "Black Polo Hat", img_url: "https://i.imgur.com/UZKd0wos.jpg", body_part: "head")
hat5 = Item.create(name: "Black Polo Beanie", img_url: "https://i.imgur.com/RfnWM0pt.jpg", body_part: "head")
raybans1 = Item.create(name: "RayBan Wayfarers", img_url: "https://i.imgur.com/HAnxBR1t.jpg", body_part: "head")
raybans2 = Item.create(name: "RayBan Aviators", img_url: "https://i.imgur.com/CfpIkkot.jpg", body_part: "head")

# TORSO Items

jacket = Item.create(name: "Leather Biker Jacket", img_url: "https://imgur.com/iAxJlKk", body_part: "torso")
parka = Item.create(name: "Canada Goose Parka", img_url: "https://imgur.com/ocGqDGx", body_part: "torso")
shirt = Item.create(name: "B/W Striped Tee", img_url: "https://imgur.com/cVWw3K9", body_part: "torso")
jacket2 = Item.create(name: "Olive Worker Jacket", img_url: "https://imgur.com/HU3nub2", body_part: "torso")
polo = Item.create(name: "Red Patterned Polo", img_url: "https://imgur.com/ZvHiUK5", body_part: "torso")
shirt2 = Item.create(name: "Red Tee", img_url: "https://imgur.com/q30mwwb", body_part: "torso")
suitJacket1 = Item.create(name: "Burgundy Suit Jacket", img_url: "https://imgur.com/b0KbRdY", body_part: "torso")
shirt3 = Item.create(name: "White Tee", img_url: "https://imgur.com/9Zu5iWK", body_part: "torso")
jacket = Item.create(name: "Patterned ls Button-up Shirt", img_url: "https://imgur.com/WQ7TQci", body_part: "torso")
suitJacket2= Item.create(name: "Black Suit Jacket", img_url: "https://imgur.com/OWoAavm", body_part: "torso")
shirt4 = Item.create(name: "Back Tee", img_url: "https://imgur.com/vkYuuw9", body_part: "torso")

# LEG Items

jeans1 = Item.create(name: "Grey Distressed Biker Jeans", img_url: "https://i.imgur.com/htg6YMft.jpg", body_part: "legs")
shorts1 = Item.create(name: "Grey Cotton Shorts", img_url: "https://i.imgur.com/AWJ8SB1t.jpg?2", body_part: "legs")
jeans2 = Item.create(name: "Black Skinny Fit Jeans", img_url: "https://i.imgur.com/ATDFu5Gt.jpg", body_part: "legs")
jeans3 = Item.create(name: "Light Blue Distressed Biker Jeans", img_url: "https://i.imgur.com/3FnOz95t.jpg", body_part: "legs")
jeans4 = Item.create(name: "Khaki Slim Chinos", img_url: "https://i.imgur.com/6hGzFVVt.jpg?1", body_part: "legs")
jeans5 = Item.create(name: "Black Slim Fit Jeans", img_url: "https://i.imgur.com/s4CJs6ct.jpg", body_part: "legs")
jeans6 = Item.create(name: "Dark Denim Slim Fit Jeans", img_url: "https://i.imgur.com/BA3XgpOt.jpg", body_part: "legs")
jeans7 = Item.create(name: "Dark Denim Straight Fit Jeans", img_url: "https://i.imgur.com/L5Np0Wst.jpg", body_part: "legs")
suitPants1 = Item.create(name: "Black Suit Pants", img_url: "https://i.imgur.com/Y4uI8dft.jpg", body_part: "legs")
suitPants2 = Item.create(name: "Burgundy Suit Pants", img_url: "https://i.imgur.com/mRcvObTt.jpg", body_part: "legs")
jeans8 = Item.create(name: "Light Blue Slim Fit Jeans", img_url: "https://i.imgur.com/13qRaXRt.jpg", body_part: "legs")

# ItemCategory

ic1 = ItemCategory.create(item_id: hat1.id, category_id: sunny.id )
ic2 = ItemCategory.create(item_id: hat1.id, category_id: hot.id )
ic3 = ItemCategory.create(item_id: hat2.id, category_id: sunny.id )
ic4 = ItemCategory.create(item_id: hat2.id, category_id: hot.id )
# ic5 = ItemCategory.create(item_id: , category_id: rain.id )
# ic6 = ItemCategory.create(item_id: , category_id: rain.id )
# ic7 = ItemCategory.create(item_id: , category_id: rain.id )
# ic8 = ItemCategory.create(item_id: , category_id: rain.id )
# ic9 = ItemCategory.create(item_id: , category_id: rain.id )
# ic10 = ItemCategory.create(item_id: , category_id: rain.id )
