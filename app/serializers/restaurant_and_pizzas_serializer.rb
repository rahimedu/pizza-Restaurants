class RestaurantAndPizzasSerializer < ActiveModel::Serializer
  attributes :id, :name,:address

  has_many :pizzas
end
