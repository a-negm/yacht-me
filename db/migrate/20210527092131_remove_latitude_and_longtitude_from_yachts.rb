class RemoveLatitudeAndLongtitudeFromYachts < ActiveRecord::Migration[6.0]
  def change
    remove_column :yachts, :longitude
    remove_column :yachts,  :latitude
  end
end
