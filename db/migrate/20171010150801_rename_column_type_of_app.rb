class RenameColumnTypeOfApp < ActiveRecord::Migration[5.1]
  def change
  	rename_column :apps,:type,:app_type
  end
end
