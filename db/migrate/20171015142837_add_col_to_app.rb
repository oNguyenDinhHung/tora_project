class AddColToApp < ActiveRecord::Migration[5.1]
  def change
    add_column :apps, :originid, :string
    add_column :apps, :link, :string
    add_reference :apps, :store, foreign_key: true
  end
end
