class AttendancesController < ApplicationController
    def create
        @event = Event.find(params[:id])
        current_user.attended_events.push(@event)
        if @event.save?
            redirect_to root_path, notice: "added attendance"
        else
            redirect_to event_path, notice: "adding attendance failed"
        end
    end

    def destroy
    end
end