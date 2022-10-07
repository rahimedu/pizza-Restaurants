class CreateRestaurantPizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurant_pizzas do |t|
      t.integer :price
      t.integer :pizza_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
