class CarRentalsController < ApplicationController

    def index
        @car_rentals = CarRental.all
    end

    def show
        @rental = CarRental.find(params[:id])
    end

    def new
        @rental = CarRental.new
    end

end
