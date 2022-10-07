class PizzasController < ApplicationController
    def index
        render json: Pizza.all, status: :ok
    end
end
