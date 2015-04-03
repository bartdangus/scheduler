class AddDayIdToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :day_id, :integer
  end
end
