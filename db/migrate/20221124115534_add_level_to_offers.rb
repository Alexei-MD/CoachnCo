class AddLevelToOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :offers, :niveau, :integer
  end
end
