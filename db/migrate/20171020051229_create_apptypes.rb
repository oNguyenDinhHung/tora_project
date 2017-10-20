class CreateApptypes < ActiveRecord::Migration[5.1]
  def change
    create_table :apptypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
