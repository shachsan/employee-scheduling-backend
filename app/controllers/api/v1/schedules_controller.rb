class Api::V1::SchedulesController < ApplicationController

    def index
        @schedules=Schedule.all 
        render json: @schedules
    end

    def create
        @schedules=[]
        schedule_params[:schedules].each do |s|
            schedule = Schedule.create!(s)
            @schedules.push(schedule)
        end 
        
        render json: @schedules
    end

    private 
    def schedule_params
        params.permit(:schedules=>[
            :date, :associate_id, :shift_id, :department_id
            ]
        )
    end
end
