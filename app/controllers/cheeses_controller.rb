class CheesesController < ApplicationController

    def index
        cheeses = Cheese.all
        render json: cheeses
    end

    def sort_by_price_desc
        sorted_cheeses = Cheese.order("price DESC")
        render json: sorted_cheeses
    end
end
