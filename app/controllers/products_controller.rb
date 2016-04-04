class ProductsController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :edit, :update, :create, :destroy]

  def index
		@products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to @product
    else
      render :edit
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def clothing
		@products = Product.where(category: "clothing")
  end

  def outdoor
    @products = Product.where(category: "outdoor")
  end

  def tools
    @products = Product.where(category: "tools")
  end

  def decor
    @products = Product.where(category: "decor")
  end

  def webapps
    @products = Product.where(category: "webapps")
  end

  def reviews
  end

  def black_touchscreen_glove
  end

  def white_touchscreen_glove
  end

  def colored_touchscreen_glove
  end

  def record_breaker
  end

  def record_staller
  end

  def round_pop
  end

  def spiral
  end
  
  def round_stall
  end

  def flashlight
  end

  def dog_leash
  end

  def itsridic_tshirt
  end

  def drifit_sock
  end

  def crystal_monkey
  end

  def headband
  end

  def led_dog_collar
  end

  private

  def product_params
    params.require(:product).permit(:title, :heading, :bullet1, :bullet2, :bullet3, :price, :amazon_url, :image_url, :additional_info, :care_instructions, :image)
  end
end
