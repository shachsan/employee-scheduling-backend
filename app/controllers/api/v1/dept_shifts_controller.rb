class Api::V1::DeptShiftsController < ApplicationController

    def index
        @deptShifts=DeptShift.all 
        render json: @deptShifts
    end 
end
