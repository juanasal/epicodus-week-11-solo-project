class ReviewsController < ApplicationController

  def index
    # Code for listing all reviews goes here.
  end

  def new
    # Code for new review form goes here.
    @product = Product.find(params[:product_id])
    @review = @product.review.new
    render :new
  end

  def create
    # Code for creating a new review goes here.
    @product = Product.find(params[product_id])
    @review = @product.reviews.new(review_params)
    if @review.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def edit
    # Code for edit review form goes here.
  end

  def show
    # Code for showing a single review goes here.
  end

  def update
    # Code for updating an review goes here.
  end

  def destroy
    # Code for deleting an review goes here.
  end

  private
  def review_params
    params.require(:review).permit(:author, :content_body, :rating, :product_id)
  end

end
