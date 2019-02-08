class Api::V1::SchedulesController < ApplicationController

    def index
        @schedules=Schedule.all.order('date')
        render json: @schedules
    end

    def destroy
        params[:id].split(',').each do |id|
            Schedule.find(id).destroy
        end 
    end 

  

    def updateBatch
        schedule_params[:schedules].each do |s|
            # byebug
            schedule=Schedule.find(s["id"])
            schedule.update(s)
        end
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
            :id, :date, :associate_id, :shift_id, :department_id
            ]
        )
    end
end
