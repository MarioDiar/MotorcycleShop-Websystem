class AddColumnStateToArticle < ActiveRecord::Migration
  def change
  	add_culumn :articles, :state, :string
  end
end
