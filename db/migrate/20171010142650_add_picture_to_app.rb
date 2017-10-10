class AddPictureToApp < ActiveRecord::Migration[5.1]
  def change
    add_column :apps, :picture, :string
  end
end
