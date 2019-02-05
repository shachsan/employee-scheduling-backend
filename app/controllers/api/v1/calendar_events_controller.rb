class Api::V1::CalendarEventsController < ApplicationController

    def index
        @events=CalendarEvent.all.order('event_date')
        render json: @events
    end
end
