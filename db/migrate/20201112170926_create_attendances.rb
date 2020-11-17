class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances, &:timestamps
  end
end
