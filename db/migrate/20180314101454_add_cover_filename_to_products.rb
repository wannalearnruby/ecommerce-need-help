class AddCoverFilenameToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :cover_filename, :string
  end
end
