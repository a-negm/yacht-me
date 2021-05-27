class AddLongitudeAndLatitudeToYachts < ActiveRecord::Migration[6.0]
  def change
    add_column :yachts, :longitude, :float
    add_column :yachts, :latitude, :float
  end
end
