# require 'pry'
Category.destroy_all
Item.destroy_all
ItemCategory.destroy_all

all = Category.create(title: "All Elements", description: "Can be worn wherever")
thunderstorm = Category.create(title: "Rain", description: "Gear for weather when raining")
snow = Category.create(title: "Snow", description: "Gear for weather when snowing")
rain = Category.create(title: "Rain", description: "Gear for weather when Sunny")
drizzle = Category.create(title: "Drizzle", description: "Gear for weather when Drizzle")
clear = Category.create(title: "Cold", description: "Gear for weather when Cold")
clouds = Category.create(title: "Moderate", description: "Gear for weather when Moderate")

# HEAD Items
hat1 = Item.create(name: "Beige Polo Hat", img_url: "https://i.imgur.com/CieuVDQt.jpg?1", body_part: "head", min_temp: 45, max_temp: 100)
hat2 = Item.create(name: "Navy Polo Hat", img_url: "https://i.imgur.com/UZKd0wot.jpg", body_part: "head",min_temp: 45, max_temp: 70)
hat3 = Item.create(name: "Sky Blue Polo Hat", img_url: "https://i.imgur.com/8EDTJCUt.jpg", body_part: "head", min_temp: 45, max_temp: 100)
hat4 = Item.create(name: "Black Polo Hat", img_url: "https://i.imgur.com/UZKd0wos.jpg", body_part: "head", min_temp: 45, max_temp: 70)
hat5 = Item.create(name: "Black Polo Beanie", img_url: "https://i.imgur.com/RfnWM0pt.jpg", body_part: "head", min_temp: 0, max_temp: 44)
raybans1 = Item.create(name: "RayBan Wayfarers", img_url: "https://i.imgur.com/HAnxBR1t.jpg", body_part: "head", min_temp: 0, max_temp: 100)
raybans2 = Item.create(name: "RayBan Aviators", img_url: "https://i.imgur.com/CfpIkkot.jpg", body_part: "head", min_temp: 0, max_temp: 100)

# TORSO Items
jacket = Item.create(name: "Leather Biker Jacket", img_url: "https://imgur.com/iAxJlKk", body_part: "torso", min_temp: 40, max_temp: 60)
parka = Item.create(name: "Canada Goose Parka", img_url: "https://imgur.com/ocGqDGx", body_part: "torso", min_temp: 0, max_temp: 40)
shirt = Item.create(name: "B/W Striped Tee", img_url: "https://imgur.com/cVWw3K9", body_part: "torso", min_temp: 60, max_temp: 90)
jacket2 = Item.create(name: "Olive Worker Jacket", img_url: "https://imgur.com/HU3nub2", body_part: "torso", min_temp: 40, max_temp: 60)
polo = Item.create(name: "Red Patterned Polo", img_url: "https://imgur.com/ZvHiUK5", body_part: "torso", min_temp: 60, max_temp: 90)
shirt2 = Item.create(name: "Red Tee", img_url: "https://imgur.com/q30mwwb", body_part: "torso", min_temp: 60, max_temp: 90)
suitJacket1 = Item.create(name: "Burgundy Suit Jacket", img_url: "https://imgur.com/b0KbRdY", body_part: "torso", min_temp: 40, max_temp: 70)
shirt3 = Item.create(name: "White Tee", img_url: "https://imgur.com/9Zu5iWK", body_part: "torso", min_temp: 60, max_temp: 90)
jacket = Item.create(name: "Patterned ls Button-up Shirt", img_url: "https://imgur.com/WQ7TQci", body_part: "torso", min_temp: 45, max_temp: 90)
suitJacket2= Item.create(name: "Black Suit Jacket", img_url: "https://imgur.com/OWoAavm", body_part: "torso", min_temp: 45, max_temp: 70)
shirt4 = Item.create(name: "Black Tee", img_url: "https://imgur.com/vkYuuw9", body_part: "torso", min_temp: 60, max_temp: 90)

# LEG Items
jeans1 = Item.create(name: "Grey Distressed Biker Jeans", img_url: "https://i.imgur.com/htg6YMft.jpg", body_part: "legs", min_temp: 20, max_temp: 70)
shorts1 = Item.create(name: "Grey Cotton Shorts", img_url: "https://i.imgur.com/AWJ8SB1t.jpg?2", body_part: "legs", min_temp: 70, max_temp: 100)
jeans2 = Item.create(name: "Black Skinny Fit Jeans", img_url: "https://i.imgur.com/ATDFu5Gt.jpg", body_part: "legs", min_temp: 40, max_temp: 75)
jeans3 = Item.create(name: "Light Blue Distressed Biker Jeans", img_url: "https://i.imgur.com/3FnOz95t.jpg", body_part: "legs", min_temp: 40, max_temp: 80)
jeans4 = Item.create(name: "Khaki Slim Chinos", img_url: "https://i.imgur.com/6hGzFVVt.jpg?1", body_part: "legs", min_temp: 40, max_temp: 80)
jeans5 = Item.create(name: "Black Slim Fit Jeans", img_url: "https://i.imgur.com/s4CJs6ct.jpg", body_part: "legs", min_temp: 40, max_temp: 80)
jeans6 = Item.create(name: "Dark Denim Slim Fit Jeans", img_url: "https://i.imgur.com/BA3XgpOt.jpg", body_part: "legs", min_temp: 40, max_temp: 90)
jeans7 = Item.create(name: "Dark Denim Straight Fit Jeans", img_url: "https://i.imgur.com/L5Np0Wst.jpg", body_part: "legs", min_temp: 40, max_temp: 70)
suitPants1 = Item.create(name: "Black Suit Pants", img_url: "https://i.imgur.com/Y4uI8dft.jpg", body_part: "legs", min_temp: 40, max_temp: 70)
suitPants2 = Item.create(name: "Burgundy Suit Pants", img_url: "https://i.imgur.com/mRcvObTt.jpg", body_part: "legs", min_temp: 40, max_temp: 70)
jeans8 = Item.create(name: "Light Blue Slim Fit Jeans", img_url: "https://i.imgur.com/13qRaXRt.jpg", body_part: "legs", min_temp: 40, max_temp: 80)

# ItemCategory
ItemCategory.create(item_id: hat1.id, category_id: all.id )
ItemCategory.create(item_id: hat2.id, category_id: all.id )
ItemCategory.create(item_id: hat3.id, category_id: all.id )
ItemCategory.create(item_id: hat4.id, category_id: all.id )
ItemCategory.create(item_id: hat5.id, category_id: all.id )
ItemCategory.create(item_id: raybans1.id, category_id: clear.id )
ItemCategory.create(item_id: raybans2.id, category_id: clear.id )
ItemCategory.create(item_id: raybans1.id, category_id: clouds.id )
ItemCategory.create(item_id: raybans2.id, category_id: clouds.id )
ItemCategory.create(item_id: jacket.id, category_id: clear.id )
ItemCategory.create(item_id: jacket.id, category_id: clouds.id )
ItemCategory.create(item_id: parka.id, category_id: clear.id )
ItemCategory.create(item_id: parka.id, category_id: clouds.id )
ItemCategory.create(item_id: parka.id, category_id: snow.id )
ItemCategory.create(item_id: parka.id, category_id: drizzle.id )
ItemCategory.create(item_id: parka.id, category_id: rain.id )
ItemCategory.create(item_id: parka.id, category_id: thunderstorm.id )
ItemCategory.create(item_id: shirt.id, category_id: all.id )
ItemCategory.create(item_id: jacket2.id, category_id: all.id )
ItemCategory.create(item_id: polo.id, category_id: clear.id )
ItemCategory.create(item_id: polo.id, category_id: clouds.id )
ItemCategory.create(item_id: shirt2.id, category_id: clear.id )
ItemCategory.create(item_id: shirt2.id, category_id: clouds.id )
ItemCategory.create(item_id: shirt2.id, category_id: drizzle.id )
ItemCategory.create(item_id: suitJacket1.id, category_id: clear.id )
ItemCategory.create(item_id: suitJacket1.id, category_id: clouds.id )
ItemCategory.create(item_id: shirt3.id, category_id: clear.id )
ItemCategory.create(item_id: shirt3.id, category_id: drizzle.id )
ItemCategory.create(item_id: jacket.id, category_id: clear.id )
ItemCategory.create(item_id: suitJacket2.id, category_id: clear.id )
ItemCategory.create(item_id: jeans1.id, category_id: all.id )
ItemCategory.create(item_id: shorts1.id, category_id: all.id )
ItemCategory.create(item_id: jeans2.id, category_id: all.id )
ItemCategory.create(item_id: jeans3.id, category_id: all.id )
ItemCategory.create(item_id: jeans4.id, category_id: all.id )
ItemCategory.create(item_id: jeans5.id, category_id: all.id )
ItemCategory.create(item_id: jeans6.id, category_id: all.id )
ItemCategory.create(item_id: jeans7.id, category_id: all.id )
ItemCategory.create(item_id: suitPants1.id, category_id: all.id )
ItemCategory.create(item_id: suitPants2.id, category_id: all.id )
ItemCategory.create(item_id: jeans8.id, category_id: all.id )
