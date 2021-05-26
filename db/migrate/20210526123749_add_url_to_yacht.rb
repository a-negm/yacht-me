class AddUrlToYacht < ActiveRecord::Migration[6.0]
  def change
    add_column :yachts, :url, :string
  end
end
