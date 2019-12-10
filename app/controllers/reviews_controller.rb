class ReviewsController < ApplicationController

    def index
        if @user = current_user
            @reviews = @user.reviews 
            
        else
            @reviews = Review.all 
        end
    end

    
    def new
        @car_rental = CarRental.find(params[:car_rental_id])
        @review =Review.new
    end

    def create
        @review = current_user.reviews.build(review_params)
        @car_rental = CarRental.find(params[:car_rental_id]) #current_user.reviews.build
        @review.car_rental = @car_rental
        if @review.save
            redirect_to car_rental_path(@review.car_rental.id) #review_path(@review)
        else
            render :new
        end
    end

    private

    def review_params
        params.require(:review).permit(:comment, :rating, :user_id)
    end

    
    


end
