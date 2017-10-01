class CreateKuchikomis < ActiveRecord::Migration[5.1]
  def change
    create_table :kuchikomis do |t|
      t.references :user, foreign_key: true
      t.references :app, foreign_key: true
      t.string :text

      t.timestamps
    end
  end
end
