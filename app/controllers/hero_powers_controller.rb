class HeroPowersController < ApplicationController
    def create
        hero = Hero.find_by(id: params[:hero_id])
        power = Power.find_by(id: params[:power_id])

        if hero && power
            hero_power = HeroPower.new(hero_power_params)
            hero_power.hero = hero
            hero_power.power = power
            if hero_power.save
                render json: hero, serializer: HeroWithPowersSerializer
            else
                render json: { errors: hero_power.errors.full_messages }, status: :unprocessable_entity
            end
        else
            render json: { error: "Hero or Power not found" }, status: :not_found
        end 
    end

    private

    def hero_power_params
        params.require(:hero_power).permit(:strength)
    end
end
