class HerosController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_response
    def index
        render json: Hero.all 
    end

    def show
        hero = find_hero
        render json: hero, serializer: HeroWithPowersSerializer
    end


    private

    def find_hero
        Hero.find(params[:id])
    end

    def record_not_found_response(exception)
        render json: { error: "Hero not found" }, status: :not_found
    end
end
