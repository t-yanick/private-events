class AttendancesController < ApplicationController
    def create
        @event = Event.find(params[:event_id])
        @event.attendees.push(current_user)

        if @event.save
            redirect_to event_path(@event), notice: "added attendance"
        else
            redirect_to event_path, notice: "adding attendance failed"
        end
    end

    def destroy
        @attendance = Attendance.find(params[:id])
        @attendance.destroy
        redirect_to root_path, notice: "Not attending anymore!"
    end
end