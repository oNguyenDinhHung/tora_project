class CreateApps < ActiveRecord::Migration[5.1]
  def change
    create_table :apps do |t|
      t.string :name
      t.references :maker, foreign_key: true
      t.references :source, foreign_key: true
      t.string :category
      t.string :type
      t.references :keyword, foreign_key: true

      t.timestamps
    end
  end
end
