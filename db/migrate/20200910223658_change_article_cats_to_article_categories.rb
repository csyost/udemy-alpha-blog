class ChangeArticleCatsToArticleCategories < ActiveRecord::Migration[6.0]
  def change
    rename_table :article_cats, :article_categories
  end
end
