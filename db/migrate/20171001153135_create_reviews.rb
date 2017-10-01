class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.references :app, foreign_key: true
      t.string :text
      t.integer :value

      t.timestamps
    end
  end
end
