class AddPremiumToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :premium, :boolean, default: false
  end
end
