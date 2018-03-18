class RemoveCategoriesIdFromProducts2 < ActiveRecord::Migration[5.1]
  def up
    remove_column :products, :categories_id
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
