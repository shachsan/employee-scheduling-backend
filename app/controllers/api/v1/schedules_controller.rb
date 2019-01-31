class Api::V1::SchedulesController < ApplicationController

    def index
        @schedules=Schedule.all 
        render json: @schedules
    end

    def create
        @schedule=Schedule.create(schedule_params)
        render json: @schedule
    end

    private 
    def schedule_params
        params.permit(:date, :associate_id, :shift_id, :department_id)
    end
end
