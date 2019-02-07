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

    def show
        byebug
    end 

    def updateBatch
        byebug
    end 

    def update

        byebug
        # params[:id].split(',').each do |id|
        #     Schedule.find(id).update
        # end
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
