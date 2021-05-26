class AddLocationToYacht < ActiveRecord::Migration[6.0]
  def change
    add_column :yachts, :location, :string
  end
end
