class RenamecolumnCategoryOfApp < ActiveRecord::Migration[5.1]
  def change
  	remove_column :apps,:category
  	remove_column :apps,:app_type
  	add_reference :apps, :category, foreign_key: true
  	add_reference :apps, :apptype, foreign_key: true
  end
end
