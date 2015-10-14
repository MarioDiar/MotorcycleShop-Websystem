class AddColumnBriefToArticles < ActiveRecord::Migration
  def change
  	add_column :articles,:brief, :string
  end
end
