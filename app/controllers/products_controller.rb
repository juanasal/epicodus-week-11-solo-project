class ProductsController < ApplicationController

  def index
    # Code for listing all products goes here.
    @products = Product.all
    @reviews = Review.all
    @products_most_reviews = []
    
    @products_most_recently_reviewed = []
    most_recently_reviewed = @reviews.order(:created_at).limit(3)
    most_recently_reviewed.each do |review|
      @products_most_recently_reviewed.push(@products.find(review.product_id))
    end

    @products_usa_made = @products.where("country_of_origin = 'United States' ")
    render :index
  end

  def new
    # Code for new product form goes here.
    @product = Product.new
    render :new
  end

  def create
    # Code for creating a new product goes here.
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully created."
      redirect_to products_path
    else
      flash[:notice] = "Something went wrong.  Product not successfully created."
      render :new
    end
  end

  def edit
    # Code for edit product form goes here.
    @product = Product.find(params[:id])
    render :edit
  end

  def show
    # Code for showing a single product goes here.
    @product = Product.find(params[:id])
    render :show
  end

  def update
    # Code for updating a product goes here.
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    # Code for deleting a product goes here.
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:cost, :country_of_origin, :grocery_category, :name)
  end

end
