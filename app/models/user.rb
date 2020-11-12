class User < ApplicationRecord
    has_many :created_events, foreign_key: :creator_id, class_name: "Event"
    has_many :attendances, foreign_key: :attendee_id
    has_many :attended_events, through: :attendances
    # add_reference :attendances, :attendee, references: :users, index: true
    # add_foreign_key :attendances, :users, column: :attendee_id
    # add_reference :attendances, :attended_event, references: :events, index: true
    # add_foreign_key :attendances, :events, column: :attended_event_id
end
