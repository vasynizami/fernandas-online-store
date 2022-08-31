# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Category.destroy_all
Product.destroy_all

Category.create([
    {name: "plant"},
    {name: "decor"},
    {name: "furniture"}
])

products = [     
 {
    name: "Desert Gems Cactus",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/323391/pexels-photo-323391.jpeg?cs=srgb&dl=pexels-scott-webb-323391.jpg&fm=jpg",
    category_id: 1,
    price_cents: 1500
  },
 {
    name: "Graptopetalum Succulent",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/1331734/pexels-photo-1331734.jpeg?cs=srgb&dl=pexels-magda-ehlers-1331734.jpg&fm=jpg",
    category_id: 1,
    price_cents: 1500
  },
 {
    name: "Echeveria Succulent",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/11177966/pexels-photo-11177966.jpeg?cs=srgb&dl=pexels-amelia-cui-11177966.jpg&fm=jpg",
    category_id: 1,
    price_cents: 1200
  },
 {
    name: "Haworthia Succulent",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/5856066/pexels-photo-5856066.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    category_id: 1,
    price_cents: 1300
  },
 {
    name: "Echinocactus",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/7335936/pexels-photo-7335936.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    category_id: 1,
    price_cents: 2500
  },
 {
    name: "Golden Pothos",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/11838530/pexels-photo-11838530.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    category_id: 1,
    price_cents: 2600
  },
 {
    name: "Jade Pothos",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/7663968/pexels-photo-7663968.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    category_id: 1,
    price_cents: 3000
  },
 {
    name: "Monstera Deliciosa",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/5858235/pexels-photo-5858235.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    category_id: 1,
    price_cents: 4000
  },
 {
    name: "Essentrica Vase",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/4203100/pexels-photo-4203100.jpeg?cs=srgb&dl=pexels-karolina-grabowska-4203100.jpg&fm=jpg",
    category_id: 2,
    price_cents: 20000,
  },
 {
    name: "Over The Moon Candle",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/278664/pexels-photo-278664.jpeg?cs=srgb&dl=pexels-pixabay-278664.jpg&fm=jpg",
    category_id: 2,
    price_cents: 2000,
  },
 {
    name: "Arabic Night Vase",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/969832/pexels-photo-969832.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    category_id: 2,
    price_cents: 3000,
  },
 {
    name: "Red Warrior Tapestry",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/5220083/pexels-photo-5220083.jpeg",
    category_id: 2,
    price_cents: 6000,
  },
 {
    name: "Parrot Sculpture",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/4207782/pexels-photo-4207782.jpeg?cs=srgb&dl=pexels-karolina-grabowska-4207782.jpg&fm=jpg",
    category_id: 2,
    price_cents: 5000,
  },
 {
    name: "Merman Tapestry",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/9480586/pexels-photo-9480586.jpeg",
    category_id: 2,
    price_cents: 4000,
  },
 {
    name: "Elegancia Mirror",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/905198/pexels-photo-905198.jpeg?cs=srgb&dl=pexels-dominika-roseclay-905198.jpg&fm=jpg",
    category_id: 2,
    price_cents: 6000,
  },
 {
    name: "Ohm Statue",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/1597017/pexels-photo-1597017.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    category_id: 2,
    price_cents: 3500
  },
 {
    name: "Brasilica Chairs (set of 2)",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/1350789/pexels-photo-1350789.jpeg?cs=srgb&dl=pexels-erick-mufasa-1350789.jpg&fm=jpg",
    category_id: 3,
    price_cents: 36000
  },
 {
    name: "Elegancia Leather Sofa",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/1866149/pexels-photo-1866149.jpeg?cs=srgb&dl=pexels-martin-p%C3%A9chy-1866149.jpg&fm=jpg",
    category_id: 3,
    price_cents: 122000
  },
 {
    name: "Yang Desk",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/509922/pexels-photo-509922.jpeg?cs=srgb&dl=pexels-pixabay-509922.jpg&fm=jpg",
    category_id: 3,
    price_cents: 12000
  },
 {
    name: "Simplicity Nightstand",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/5998136/pexels-photo-5998136.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    category_id: 3,
    price_cents: 10000
  },
 {
    name: "Desert Sand Cushion",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/7538119/pexels-photo-7538119.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    category_id: 2,
    price_cents: 4000
  }
]

Product.create!(products)

p "Created #{Product.count} products"
