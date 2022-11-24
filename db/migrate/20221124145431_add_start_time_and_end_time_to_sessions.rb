class AddStartTimeAndEndTimeToSessions < ActiveRecord::Migration[7.0]
  def change
    remove_column :sessions, :date
    add_column :sessions, :start_time, :datetime
    add_column :sessions, :end_time, :datetime
  end
end
