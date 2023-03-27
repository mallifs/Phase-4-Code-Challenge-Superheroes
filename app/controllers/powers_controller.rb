class PowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_response

    def index
        render json: Power.all
    end

    def show
        power = find_power
        render json: power
    end

    def update
        power =  find_power
        if power
          if power.update(power_params)
            render json: power
          else
            render json: { errors: power.errors.full_messages }, status: :unprocessable_entity
          end
        else
          render json: { error: "Power not found" }, status: :not_found
        end
      end

    private

    def find_power
        Power.find(params[:id])
    end

    def power_params
        params.require(:power).permit(:description)
    end

    def record_not_found_response(exception)
        render json: { error: "Power not found" }, status: :not_found
    end

end
