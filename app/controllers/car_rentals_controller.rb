class CarRentalsController < ApplicationController

    def index
        @car_rentals = CarRental.all
    end

    def show
        @user = User.find(params[:id])
        @rental = CarRental.find(params[:id])
    end

    def new
        @rental = CarRental.new
        # redirect_to :confirmation
    end

    # def create
    #     @rental = CarRental.create
    # end

    

end
