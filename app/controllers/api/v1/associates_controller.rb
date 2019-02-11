class Api::V1::AssociatesController < ApplicationController
    def index
        @associates = Associate.where(department_id:params[:id])
        rendor json: @associates
    end 

    def create
        @associate=Associate.create!(associate_params)
        render json: @associate
    end

    def update
        # byebug
        @associate=Associate.find(associate_params[:id])
        @associate.update(associate_params)
        render json: @associate
    end

    def show
        # byebug
        @associates = Associate.where(department_id:associate_params[:id])
        render json: @associates
    end 

    def destroy
        @associate=Associate.find(associate_params[:id])
        @associate.destroy
    end

    private
    def associate_params
        params.permit(:id, :name, :date_of_birth, :gender, :position, :department_id, :hours_per_week, :monday, :tuesday, :wednesday,
            :thursday, :friday, :saturday, :sunday)
    end
end
