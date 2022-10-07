puts "Lets cooks some pizzas"

5.times do
    Restaurant.create(
        name:Faker::Restaurant.name,
        address:Faker::Address.street_address
    )
end
Pizza.create(
    name:"Margherita pizza",
    ingredients:"basil, tomato, mozzarella"
)
Pizza.create(
    name:"Cheese Pizza",
    ingredients:"mozzarella, gorgonzola, parmigiano reggiano, goats cheese"
)
Pizza.create(
    name:"Pepperoni pizza",
    ingredients:"mozzarella, pepperoni, tomato sauce"
)
Pizza.create(
    name:"Hawaiian pizza",
    ingredients:"pizza sauce, cheese, cooked ham, pineapple"
)
Pizza.create(
    name:"Meat feast pizza",
    ingredients:"ground beef, bacon, pepperoni, sliced ham."
)

20.times do
    RestaurantPizza.create(
        price: rand(1..30),
        pizza_id:Pizza.all[rand(Pizza.count)].id,
        restaurant_id: Restaurant.all[rand(Restaurant.count)].id 
    )
end

puts "Pizza are ready!"