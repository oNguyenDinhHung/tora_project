class AddUserIdToApp < ActiveRecord::Migration[5.1]
  def change
    add_reference :apps, :user, foreign_key: true
  end
end
