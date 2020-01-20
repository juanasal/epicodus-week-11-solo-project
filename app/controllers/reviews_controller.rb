class ReviewsController < ApplicationController

  # def index
  #   # Code for listing all reviews goes here.
  # end

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
    @product = Product.find(params[:product_id])
    @rating = Rating.find(params[:id])
    render :edit
  end

  def show
    # Code for showing a single review goes here.
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    render :show
  end

  def update
    # Code for updating an review goes here.
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to product_path(@review.product)
    else
      render :edit
    end
  end

  def destroy
    # Code for deleting an review goes here.
    @review = Review.find(params[:id])
    @review = destroy
    redirect_to product_path(@review.product)
  end

  private
  def review_params
    params.require(:review).permit(:author, :content_body, :rating, :product_id)
  end

end
