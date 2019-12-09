class ReviewsController < ApplicationController

    def index
        if @user = current_user
            @reviews = @user.reviews 
            
        else
            @reviews = Review.all 
        end
    end

    
    def new
        @review =Review.new
    end

    def create
        
        @review = Review.new(review_params) #current_user.reviews.build
        if @review.save
            redirect_to car_rental_path #review_path(@review)
        else
            render :new
        end
    end

    private

    def review_params
        params.require(:review).permit(:comment, :rating, :current_user)
    end

    
    


end
