class CreateYachts < ActiveRecord::Migration[6.0]
  def change
    create_table :yachts do |t|
      t.string :name
      t.string :type
      t.integer :length
      t.integer :number_of_cabins
      t.integer :rental_price
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.integer :guests

      t.timestamps
    end
  end
end
