class RenameTypeInYacht < ActiveRecord::Migration[6.0]
  def change
    rename_column :yachts, :type, :yacht_type
  end
end
