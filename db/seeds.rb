# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Category.destroy_all
Product.destroy_all

User.create!(username: "admin", email: "admin@email.com", password: "123456")
p "#{User.count} user(s) created"

categories = Category.create([
    {name: "plant", id: 1},
    {name: "decor", id: 2},
    {name: "furniture", id:3}
])

products = [     
    {
    name: "Cactus",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/323391/pexels-photo-323391.jpeg?cs=srgb&dl=pexels-scott-webb-323391.jpg&fm=jpg",
    category_id: 1,
    price_cents: 3000
},
{
    name: "Aloe Vera and Succulent Plant",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/1445419/pexels-photo-1445419.jpeg?cs=srgb&dl=pexels-ylanite-koppens-1445419.jpg&fm=jpg",
    category_id: 1,
    price_cents: 2000
},
{
    name: "Succulent Plant",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/11177966/pexels-photo-11177966.jpeg?cs=srgb&dl=pexels-amelia-cui-11177966.jpg&fm=jpg",
    category_id: 1,
    price_cents: 4000
},
{
    name: "Succulent Plant in a blue pot",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/1903975/pexels-photo-1903975.jpeg?cs=srgb&dl=pexels-scott-webb-1903975.jpg&fm=jpg",
    category_id: 1,
    price_cents: 2000
},
{
    name: "Cactus plant",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/1058963/pexels-photo-1058963.jpeg?cs=srgb&dl=pexels-elle-hughes-1058963.jpg&fm=jpg",
    category_id: 1,
    price_cents: 2500
},
{
    name: "Bonsai",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/4050790/pexels-photo-4050790.jpeg?cs=srgb&dl=pexels-el%C4%ABna-ar%C4%81ja-4050790.jpg&fm=jpg",
    category_id: 1,
    price_cents: 2100
},
{
    name: "Three Cactus Plans",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/1903965/pexels-photo-1903965.jpeg?cs=srgb&dl=pexels-scott-webb-1903965.jpg&fm=jpg",
    category_id: 1,
    price_cents: 2600
},
{
    name: "Cactus",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/323391/pexels-photo-323391.jpeg?cs=srgb&dl=pexels-scott-webb-323391.jpg&fm=jpg",
    category_id: 1,
    price_cents: 2800
},
{
    name: "Cactus Plant",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/323391/pexels-photo-323391.jpeg?cs=srgb&dl=pexels-scott-webb-323391.jpg&fm=jpg",
    category_id: 1,
    price_cents: 3000
},
{
    name: "Home decor",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/4203100/pexels-photo-4203100.jpeg?cs=srgb&dl=pexels-karolina-grabowska-4203100.jpg&fm=jpg",
    category_id: 2,
    price_cents: 20000,
},
{
    name: "Candles",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/278664/pexels-photo-278664.jpeg?cs=srgb&dl=pexels-pixabay-278664.jpg&fm=jpg",
    category_id: 2,
    price_cents: 4000,
},
{
    name: "Vase",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/4207892/pexels-photo-4207892.jpeg?cs=srgb&dl=pexels-karolina-grabowska-4207892.jpg&fm=jpg",
    category_id: 2,
    price_cents: 3000,
},
{
    name: "Wall art",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/2850290/pexels-photo-2850290.jpeg?cs=srgb&dl=pexels-brett-sayles-2850290.jpg&fm=jpg",
    category_id: 2,
    price_cents: 4000,
},
{
    name: "Sculpture",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/4207782/pexels-photo-4207782.jpeg?cs=srgb&dl=pexels-karolina-grabowska-4207782.jpg&fm=jpg",
    category_id: 2,
    price_cents: 5000,
},
{
    name: "Cups",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/1458097/pexels-photo-1458097.jpeg?cs=srgb&dl=pexels-suzy-hazelwood-1458097.jpg&fm=jpg",
    category_id: 2,
    price_cents: 5000,
},
{
    name: "Mirror",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/905198/pexels-photo-905198.jpeg?cs=srgb&dl=pexels-dominika-roseclay-905198.jpg&fm=jpg",
    category_id: 2,
    price_cents: 4000,
},

{
    name: "Wooden ladder",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/8989419/pexels-photo-8989419.jpeg?cs=srgb&dl=pexels-anna-nekrashevich-8989419.jpg&fm=jpg",
    category_id: 3,
    price_cents: 3500
},
{
    name: "Chairs",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/1350789/pexels-photo-1350789.jpeg?cs=srgb&dl=pexels-erick-mufasa-1350789.jpg&fm=jpg",
    category_id: 3,
    price_cents: 10500
},
{
    name: "Sofa",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/1866149/pexels-photo-1866149.jpeg?cs=srgb&dl=pexels-martin-p%C3%A9chy-1866149.jpg&fm=jpg",
    category_id: 3,
    price_cents: 2500
},
{
    name: "Table",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/509922/pexels-photo-509922.jpeg?cs=srgb&dl=pexels-pixabay-509922.jpg&fm=jpg",
    category_id: 3,
    price_cents: 2200
},
{
    name: "Bedside set",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/6585743/pexels-photo-6585743.jpeg?cs=srgb&dl=pexels-max-vakhtbovych-6585743.jpg&fm=jpg",
    category_id: 3,
    price_cents: 20000
},
{
    name: "Pillows",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    img_link: "https://images.pexels.com/photos/4946759/pexels-photo-4946759.jpeg?cs=srgb&dl=pexels-maria-orlova-4946759.jpg&fm=jpg",
    category_id: 3,
    price_cents: 2000
},
]

Product.create!(products)

p "Created #{Product.count} products"



