class AddAttendeeAndAttendedEventToAttendance < ActiveRecord::Migration[6.0]
  def change
    add_reference :attendances, :attendee, references: :users, index: true
    add_foreign_key :attendances, :users, column: :attendee_id
    add_reference :attendances, :attended_event, references: :events, index: true
    add_foreign_key :attendances, :events, column: :attended_event_id
  end
end
