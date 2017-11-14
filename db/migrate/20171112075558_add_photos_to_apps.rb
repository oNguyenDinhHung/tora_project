class AddPhotosToApps < ActiveRecord::Migration[5.1]
  def change
    add_column :apps, :photos, :string
  end
end
