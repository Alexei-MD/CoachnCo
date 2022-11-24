class RemoveEndTimeFromOffers < ActiveRecord::Migration[7.0]
  def change
    remove_column :offers, :end_time, :datetime
  end
end
