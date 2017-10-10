class RemovecolumnKeywordIdAtApp < ActiveRecord::Migration[5.1]
  def change
  	remove_column :apps,:keyword_id
  end
end
