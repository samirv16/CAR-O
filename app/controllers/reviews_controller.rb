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
        @car_rental = CarRental.find(params[:car_rental_id]) 
        @review.car_rental = @car_rental
        if @review.save
            redirect_to car_rental_path(@review.car_rental.id) 
        else
            render :new
        end
    end

    def show
        @review = Review.find_by(id: params[:id])
    end

    def destroy
        # byebug
        @review.destroy
        @rental = CarRental.find(params[:car_rental_id])
        redirect_to car_rental_path(@rental)
    end

    def best_revs
        @reviews = Review.best_reviews
    end

    private

    def set_review
        @review =  Review.find_by(id: params[:id])
    end

    def review_params
        params.require(:review).permit(:comment, :rating, :user_id)
    end

    
    


end
