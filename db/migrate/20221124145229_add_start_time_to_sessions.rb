class AddStartTimeToSessions < ActiveRecord::Migration[7.0]
  def change
    add_column :sessions, :start_time, :datetime
  end
end
