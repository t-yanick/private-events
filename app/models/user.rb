class User < ApplicationRecord
    has_many :created_events, foreign_key: :creator_id, class_name: "Event"
    has_many :attendances, foreign_key: :attendee_id
    has_many :attended_events, through: :attendances
    #<%= link_to 'Not Attending', attendance_path(attendee.attendances.find_by_attended_event_id(@event.id)), method: :delete%>
end
