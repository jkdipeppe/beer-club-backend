class BeersController < ApplicationController
  before_action :find_beer, only: [:update]
  skip_before_action :authorized, only: [:create]

    def index
      @beers = Beer.all
      byebug
      render json: @beers, status: :accepted
    end

    def create
      @beer = Beer.create(beer_params)
      render json: @beer, status: :accepted
    end

    def update
      @current_beer.update(beer_params)
      if @current_beer.save
        render json: @current_beer, status: :accepted
      else
        render json: {errors: @current_beer.erros.full_messages}, status: :unprocessible_entity
      end
    end

    private
    def beer_params
      params.permit(:brand, :name, :abv, :city, :state, :type)
    end

    def find_beer
      @current_beer
    end
end
