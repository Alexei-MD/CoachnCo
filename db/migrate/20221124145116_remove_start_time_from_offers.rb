class RemoveStartTimeFromOffers < ActiveRecord::Migration[7.0]
  def change
    remove_column :offers, :start_time, :datetime
  end
end
