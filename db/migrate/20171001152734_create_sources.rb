class CreateSources < ActiveRecord::Migration[5.1]
  def change
    create_table :sources do |t|
      t.integer :originid
      t.string :link
      t.references :store, foreign_key: true

      t.timestamps
    end
  end
end
