class Api::V1::AssociatesController < ApplicationController
    def index
        @associates = Associate.where(department_id:params[:id])
        rendor json: @associates
    end 

    def show
        # byebug
        @associates = Associate.where(department_id:associate_params[:id])
        render json: @associates
    end 

    private
    def associate_params
        params.permit(:id, :name, :position, :department_id, :hours_per_week)
    end
end
