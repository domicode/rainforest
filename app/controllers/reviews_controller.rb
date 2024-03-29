class ReviewsController < ApplicationController

  before_filter :ensure_logged_in, only: [:edit, :create, :show, :update, :destroy]
  before_filter :load_product

  def show
  end

  def create
    @review = @product.reviews.build(review_params)
    @review.user = current_user
    if @review.save 
      redirect_to product_path(@product), notice: "Review created successfully"
    else
      render :action => :show #????
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  def edit
    
  end

  def update
    
  end

  private

  def review_params
    params.require(:review).permit(:comment, :product_id)
  end

  def load_product
    @product = Product.find(params[:product_id])
  end
end
