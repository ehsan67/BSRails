class ScratchersController < ApplicationController
    before_action :set_scratcher, only: [:show, :update, :destroy]
    before_action :authenticate_user
    
    def index
        render json: Scratcher.all
    end

    def show
        render json: @scratcher
    end

    def create
        @scratcher = Scratcher.new(scratcher_params)
        if @scratcher.save
         render json: @scratcher, status: :created, location: scratcher_url(@scratcher)
        else
         render json: @scratcher.errors, status: :unprocessable_entity
        end
    end

    def update
        if @scratcher.update(scratcher_params)
         render json: @scratcher
        else
         render json: @scratcher.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @scratcher.destroy
    end
    
    private

    def scratcher_params
        params.require(:scratcher).permit(:name, :description, :size, :price)
    end

    def set_scratcher
        @scratcher= Scratcher.find(params[:id])
    end
end
