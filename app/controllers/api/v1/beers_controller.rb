class Api::V1::BeersController < ApplicationController
  
  def index
    @beers = Beer.all
    render json: @beers
  end

  def show
    @beer = Beer.find_by(id: params[:id])
    render json: @beer
  end

  def create
    @beer = Beer.new(name: params[:name], price: params[:price], alcohol_percentage: params[:alcohol_percentage], beer_type: params[:beer_type])
    if @beer.save
      render :show
    else
      render json: {errors: @beer.errors.full_messages}, status:422
    end
  end

  def destroy
    @beer = Beer.find_by(id: params[:id])
    @beer.destroy
    render json: {message: "BEER DESTROYED, you heartless monster!"}
  end

  def update
    beer = Beer.find_by(id: params[:id])
    beer.assign_attributes({name: params[:name], price: params[:price], alcohol_percentage: params[:alcohol_percentage], beer_type: params[:beer_type]})
    if beer.save
      flash[:success] = "Beer Updated!"
      redirect_to "/beers/#{beer.id}"
    else
      flash[:danger] = "Product Not Updated!"
      render :edit
    end
  end
end
